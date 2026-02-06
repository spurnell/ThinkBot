import Link from "next/link";
import type { ArticleMeta } from "@/lib/articles";
import { getAuthorName } from "@/lib/fellows";

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

export default function ArticleCard({ article }: { article: ArticleMeta }) {
  return (
    <Link href={`/articles/${article.slug}`} className="group block">
      <article className="article-card rounded-xl border border-white/10 bg-[#111827] p-6 accent-border">
        <div className="flex items-center gap-3">
          <span
            className={`rounded-full px-2.5 py-0.5 text-[11px] font-semibold ${getCategoryClass(article.category)}`}
          >
            {article.category}
          </span>
          <span className="text-xs text-slate-500">
            {new Date(article.date).toLocaleDateString("en-US", {
              year: "numeric",
              month: "short",
              day: "numeric",
            })}
          </span>
          <span className="rounded-md bg-white/5 px-2 py-0.5 text-[11px] font-medium capitalize text-slate-500">
            {article.format.replace("-", " ")}
          </span>
        </div>
        <h3 className="mt-3 text-lg font-bold text-slate-100 group-hover:text-blue-400 transition-colors">
          {article.title}
        </h3>
        <p className="mt-2 text-sm leading-relaxed text-slate-400 line-clamp-2">
          {article.summary}
        </p>
        <div className="mt-4 flex items-center justify-between">
          <p className="text-xs font-medium text-slate-500">
            By {getAuthorName(article.author)}
          </p>
          <span className="text-xs font-medium text-blue-400 opacity-0 transition-opacity group-hover:opacity-100">
            Read more &rarr;
          </span>
        </div>
      </article>
    </Link>
  );
}
