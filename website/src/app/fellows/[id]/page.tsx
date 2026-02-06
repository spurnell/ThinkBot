import { notFound } from "next/navigation";
import Link from "next/link";
import { fellows, getFellow } from "@/lib/fellows";
import { getArticlesByAuthor } from "@/lib/articles";
import ArticleCard from "@/components/ArticleCard";

export function generateStaticParams() {
  return fellows.map((f) => ({ id: f.id }));
}

export async function generateMetadata({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const fellow = getFellow(id);
  if (!fellow) return { title: "Fellow Not Found — ThinkBot" };
  return {
    title: `${fellow.title} — ThinkBot`,
    description: fellow.bio,
  };
}

const gradientMap: Record<string, string> = {
  "fellow-antitrust": "from-rose-500 to-pink-600",
  "fellow-tech-innovation": "from-blue-500 to-indigo-600",
  "fellow-ai": "from-violet-500 to-purple-600",
  "fellow-content-moderation": "from-amber-500 to-orange-600",
  "fellow-general-tech": "from-emerald-500 to-green-600",
};

export default async function FellowPage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const fellow = getFellow(id);
  if (!fellow) notFound();

  const articles = getArticlesByAuthor(fellow.id);
  const gradient = gradientMap[fellow.id] || "from-slate-500 to-slate-600";
  const initials = fellow.id
    .replace("fellow-", "")
    .split("-")
    .map((w) => w[0].toUpperCase())
    .join("");

  return (
    <div>
      {/* Fellow header */}
      <section className="border-b border-white/5 bg-[#111827] px-6 py-14">
        <div className="mx-auto max-w-5xl">
          <Link
            href="/about"
            className="inline-flex items-center gap-1 text-sm font-medium text-slate-500 transition-colors hover:text-slate-300"
          >
            &larr; Back to About
          </Link>

          <div className="mt-8 flex items-start gap-6">
            <div
              className={`flex h-16 w-16 flex-shrink-0 items-center justify-center rounded-2xl bg-gradient-to-br ${gradient} text-xl font-bold text-white shadow-lg`}
            >
              {initials}
            </div>
            <div>
              <h1 className="text-3xl font-extrabold tracking-tight text-white">
                {fellow.title}
              </h1>
              <p className="mt-1 text-sm font-medium text-slate-500">
                {fellow.domain} &middot; ThinkBot
              </p>
              <p className="mt-4 max-w-2xl text-slate-400 leading-relaxed">
                {fellow.bio}
              </p>
            </div>
          </div>

          <div className="mt-8">
            <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-500">
              Areas of Expertise
            </h3>
            <div className="mt-3 flex flex-wrap gap-2">
              {fellow.expertise.map((exp) => (
                <span
                  key={exp}
                  className="rounded-full border border-blue-500/20 bg-blue-500/10 px-3 py-1 text-xs font-semibold text-blue-400"
                >
                  {exp}
                </span>
              ))}
            </div>
          </div>
        </div>
      </section>

      {/* Articles */}
      <section className="mx-auto max-w-5xl px-6 py-12">
        <h2 className="text-xl font-bold text-white">
          Articles by {fellow.name}
        </h2>
        <div className="mt-6 space-y-4">
          {articles.length > 0 ? (
            articles.map((article) => (
              <ArticleCard key={article.slug} article={article} />
            ))
          ) : (
            <div className="rounded-xl border-2 border-dashed border-white/10 py-12 text-center">
              <p className="text-slate-500">No published articles yet.</p>
            </div>
          )}
        </div>
      </section>
    </div>
  );
}
