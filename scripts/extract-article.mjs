#!/usr/bin/env node
// =============================================================================
// extract-article.mjs — robustly extract a clean article from agent output
// =============================================================================
// The publishing agents (fellow, chief-editor) are told to output ONLY the
// article markdown, but they frequently wrap it in a ```markdown code fence,
// prepend chat preamble ("Now I'll write the article..."), and/or append a
// changelog of edits. The old `sed '1{/^```/d}'` one-liner only stripped a
// fence sitting on the exact first/last line, so all of those cases slipped
// through and corrupted the saved .md file (breaking the website build).
//
// This script reads raw agent output on stdin, extracts the real article, and:
//   - prints the clean article to stdout and exits 0 on success
//   - prints a diagnostic to stderr and exits 1 if the output is not a valid
//     article (e.g. the agent emitted only frontmatter + a changelog, with no
//     body). Callers MUST treat a non-zero exit as a hard failure and NOT
//     commit anything — failing loudly beats publishing garbage.
//
// Usage:  some_agent_output | node scripts/extract-article.mjs > article.md
// =============================================================================

const MIN_BODY_WORDS = 150; // real articles are 800+ words; this only catches
                            // frontmatter-only / bodyless output.

function readStdin() {
  return new Promise((resolve) => {
    let data = "";
    process.stdin.setEncoding("utf8");
    process.stdin.on("data", (chunk) => (data += chunk));
    process.stdin.on("end", () => resolve(data));
  });
}

const isFence = (line) => /^\s*```/.test(line);
const isClosingFence = (line) => /^\s*```\s*$/.test(line);
const isFrontmatterDelim = (line) => line.trim() === "---";

// Pull the article out of whatever the agent emitted.
function extract(raw) {
  const lines = raw.replace(/\r\n/g, "\n").split("\n");

  const firstFenceIdx = lines.findIndex(isFence);
  const firstFmIdx = lines.findIndex(isFrontmatterDelim);

  let body;
  // Treat a fence as a wrapper only if it appears at or before the frontmatter
  // start. That way a ``` that legitimately appears later in the article body
  // (e.g. a code sample) never triggers truncation.
  const fenceWrapsArticle =
    firstFenceIdx !== -1 &&
    (firstFmIdx === -1 || firstFenceIdx <= firstFmIdx);

  if (fenceWrapsArticle) {
    // Take everything between the opening fence and the next closing fence
    // (or EOF). A closing fence that sits right after the frontmatter yields
    // an empty body, which validation below will correctly reject.
    const start = firstFenceIdx + 1;
    let end = lines.length;
    for (let i = start; i < lines.length; i++) {
      if (isClosingFence(lines[i])) {
        end = i;
        break;
      }
    }
    body = lines.slice(start, end);
  } else if (firstFmIdx !== -1) {
    // No wrapping fence: just drop any chat preamble before the frontmatter.
    body = lines.slice(firstFmIdx);
  } else {
    body = lines;
  }

  // Trim leading/trailing blank lines.
  while (body.length && body[0].trim() === "") body.shift();
  while (body.length && body[body.length - 1].trim() === "") body.pop();

  return body.join("\n");
}

// Confirm the extracted text is actually a publishable article.
function validate(article) {
  const lines = article.split("\n");
  if (!isFrontmatterDelim(lines[0] || "")) {
    return "does not start with a '---' frontmatter delimiter";
  }
  const closeIdx = lines.findIndex(
    (l, i) => i > 0 && isFrontmatterDelim(l)
  );
  if (closeIdx === -1) {
    return "frontmatter is not closed with a second '---'";
  }
  const frontmatter = lines.slice(1, closeIdx).join("\n");
  if (!/^\s*title:\s*\S/m.test(frontmatter)) {
    return "frontmatter is missing a 'title:' field";
  }
  if (!/^\s*status:\s*\S/m.test(frontmatter)) {
    return "frontmatter is missing a 'status:' field";
  }
  const bodyText = lines.slice(closeIdx + 1).join(" ").trim();
  const wordCount = bodyText ? bodyText.split(/\s+/).length : 0;
  if (wordCount < MIN_BODY_WORDS) {
    return `article body is too short (${wordCount} words; expected >= ${MIN_BODY_WORDS}) — the agent likely emitted frontmatter without a body`;
  }
  return null; // valid
}

const raw = await readStdin();
const article = extract(raw);
const problem = validate(article);

if (problem) {
  process.stderr.write(`extract-article: rejected agent output — ${problem}\n`);
  process.exit(1);
}

process.stdout.write(article + "\n");
