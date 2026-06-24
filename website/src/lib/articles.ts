import fs from "fs";
import path from "path";
import matter from "gray-matter";
import { remark } from "remark";
import html from "remark-html";

const articlesDirectory = path.join(process.cwd(), "content/articles");

export interface ArticleMeta {
  slug: string;
  title: string;
  author: string;
  date: string;
  category: string;
  tags: string[];
  status: string;
  format: string;
  summary: string;
}

export interface Article extends ArticleMeta {
  contentHtml: string;
}

// Parse a single article file's frontmatter into metadata.
// Returns null (and logs) if the file is missing or has malformed frontmatter,
// so one bad file can never crash a page that lists all articles.
function parseArticleMeta(fileName: string): ArticleMeta | null {
  try {
    const slug = fileName.replace(/\.md$/, "");
    const fullPath = path.join(articlesDirectory, fileName);
    const fileContents = fs.readFileSync(fullPath, "utf8");
    const { data } = matter(fileContents);

    return {
      slug,
      title: data.title || "",
      author: data.author || "",
      date: data.date || "",
      category: data.category || "",
      tags: Array.isArray(data.tags) ? data.tags : [],
      status: data.status || "draft",
      format: data.format || "policy-brief",
      summary: data.summary || "",
    } as ArticleMeta;
  } catch (err) {
    console.error(`Skipping malformed article "${fileName}":`, (err as Error).message);
    return null;
  }
}

export function getAllArticles(): ArticleMeta[] {
  if (!fs.existsSync(articlesDirectory)) {
    return [];
  }

  const fileNames = fs.readdirSync(articlesDirectory).filter((f) => f.endsWith(".md"));

  const articles = fileNames
    .map(parseArticleMeta)
    .filter((a): a is ArticleMeta => a !== null)
    .filter((a) => a.status === "published");

  articles.sort((a, b) => (a.date > b.date ? -1 : 1));
  return articles;
}

export function getArticlesByAuthor(author: string): ArticleMeta[] {
  return getAllArticles().filter((a) => a.author === author);
}

export function getArticlesByCategory(category: string): ArticleMeta[] {
  return getAllArticles().filter((a) => a.category === category);
}

export function getArticlesByTag(tag: string): ArticleMeta[] {
  return getAllArticles().filter((a) => a.tags.includes(tag));
}

export function getAllSlugs(): string[] {
  // Derive routes only from valid, published articles so malformed or draft
  // files never generate a route that would 500/404 at request time.
  return getAllArticles().map((a) => a.slug);
}

export async function getArticle(slug: string): Promise<Article> {
  const fullPath = path.join(articlesDirectory, `${slug}.md`);
  const fileContents = fs.readFileSync(fullPath, "utf8");
  const { data, content } = matter(fileContents);

  const processedContent = await remark().use(html).process(content);
  const contentHtml = processedContent.toString();

  return {
    slug,
    title: data.title || "",
    author: data.author || "",
    date: data.date || "",
    category: data.category || "",
    tags: data.tags || [],
    status: data.status || "draft",
    format: data.format || "policy-brief",
    summary: data.summary || "",
    contentHtml,
  };
}

export function getAllCategories(): string[] {
  const articles = getAllArticles();
  const categories = new Set(articles.map((a) => a.category));
  return Array.from(categories).sort();
}

export function getAllTags(): string[] {
  const articles = getAllArticles();
  const tags = new Set(articles.flatMap((a) => a.tags));
  return Array.from(tags).sort();
}
