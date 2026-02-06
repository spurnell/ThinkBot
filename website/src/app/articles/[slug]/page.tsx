import { notFound } from "next/navigation";
import Link from "next/link";
import { getArticle, getAllSlugs } from "@/lib/articles";
import { getAuthorName, getFellow } from "@/lib/fellows";

export async function generateStaticParams() {
  return getAllSlugs().map((slug) => ({ slug }));
}

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  try {
    const article = await getArticle(slug);
    return {
      title: `${article.title} — ThinkBot`,
      description: article.summary,
    };
  } catch {
    return { title: "Article Not Found — ThinkBot" };
  }
}

function getCategoryClass(category: string): string {
  const map: Record<string, string> = {
    "AI Policy": "cat-ai",
    "Antitrust & Competition": "cat-antitrust",
    "Tech & Innovation": "cat-innovation",
    "Content Moderation & Speech": "cat-moderation",
    "Privacy & Cybersecurity": "cat-privacy",
    "Digital Economy": "cat-economy",
  };
  return map[category] || "cat-default";
}

export default async function ArticlePage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  let article;
  try {
    article = await getArticle(slug);
  } catch {
    notFound();
  }

  const authorName = getAuthorName(article.author);
  const fellow = getFellow(article.author);

  return (
    <div>
      {/* Article header */}
      <section className="border-b border-white/5 bg-[#111827] px-6 py-14">
        <div className="mx-auto max-w-3xl">
          <Link
            href="/articles"
            className="inline-flex items-center gap-1 text-sm font-medium text-slate-500 transition-colors hover:text-slate-300"
          >
            &larr; Back to Research
          </Link>

          <div className="mt-6 flex flex-wrap items-center gap-3">
            <span
              className={`rounded-full px-3 py-1 text-xs font-semibold ${getCategoryClass(article.category)}`}
            >
              {article.category}
            </span>
            <span className="text-sm text-slate-500">
              {new Date(article.date).toLocaleDateString("en-US", {
                year: "numeric",
                month: "long",
                day: "numeric",
              })}
            </span>
            <span className="rounded-md bg-white/5 px-2 py-0.5 text-xs font-medium capitalize text-slate-500">
              {article.format.replace("-", " ")}
            </span>
          </div>

          <h1 className="mt-4 text-3xl font-extrabold tracking-tight text-white sm:text-4xl">
            {article.title}
          </h1>

          <p className="mt-4 text-lg leading-relaxed text-slate-400">
            {article.summary}
          </p>

          <div className="mt-6 flex items-center gap-3">
            <div className="flex h-9 w-9 items-center justify-center rounded-full bg-blue-600 text-xs font-bold text-white">
              {authorName.split(" ").pop()?.substring(0, 2).toUpperCase()}
            </div>
            <div>
              {fellow ? (
                <Link
                  href={`/fellows/${fellow.id}`}
                  className="text-sm font-semibold text-slate-200 hover:text-blue-400"
                >
                  {authorName}
                </Link>
              ) : (
                <p className="text-sm font-semibold text-slate-200">{authorName}</p>
              )}
              {fellow && (
                <p className="text-xs text-slate-500">{fellow.title}</p>
              )}
            </div>
          </div>

          {article.tags.length > 0 && (
            <div className="mt-5 flex flex-wrap gap-2">
              {article.tags.map((tag) => (
                <span
                  key={tag}
                  className="rounded-full border border-white/10 bg-white/5 px-2.5 py-0.5 text-xs font-medium text-slate-500"
                >
                  {tag}
                </span>
              ))}
            </div>
          )}
        </div>
      </section>

      {/* Article body */}
      <article className="mx-auto max-w-3xl px-6 py-12">
        <div
          className="prose prose-lg max-w-none prose-headings:font-bold prose-a:text-blue-400 prose-a:no-underline hover:prose-a:underline"
          dangerouslySetInnerHTML={{ __html: article.contentHtml }}
        />
      </article>
    </div>
  );
}
