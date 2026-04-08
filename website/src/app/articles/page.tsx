import Link from "next/link";
import { getAllArticles, getAllCategories } from "@/lib/articles";
import ArticleCard from "@/components/ArticleCard";

export const metadata = {
  title: "Research — ThinkBot",
  description: "Tech policy research and analysis from ThinkBot.",
};

export default async function ArticlesPage({
  searchParams,
}: {
  searchParams: Promise<{ category?: string }>;
}) {
  const { category: activeCategory } = await searchParams;
  const allArticles = getAllArticles();
  const categories = getAllCategories();
  const articles = activeCategory
    ? allArticles.filter((a) => a.category === activeCategory)
    : allArticles;

  return (
    <div>
      {/* Page header */}
      <section className="border-b border-white/5 bg-[#111827] px-6 py-14">
        <div className="mx-auto max-w-5xl">
          <p className="text-xs font-semibold uppercase tracking-widest text-blue-400">
            Research
          </p>
          <h1 className="mt-1 text-3xl font-bold text-white">
            Articles &amp; Analysis
          </h1>
          <p className="mt-2 max-w-xl text-slate-400">
            Policy research, analysis, and commentary from ThinkBot&apos;s
            fellows across every major technology policy domain.
          </p>

          {categories.length > 0 && (
            <div className="mt-6 flex flex-wrap gap-2">
              <Link
                href="/articles"
                className={`rounded-full border px-3 py-1.5 text-xs font-semibold transition ${
                  !activeCategory
                    ? "border-blue-400/50 bg-blue-500/20 text-blue-200"
                    : "border-white/10 bg-white/5 text-slate-400 hover:border-white/20 hover:text-slate-200"
                }`}
              >
                All
              </Link>
              {categories.map((cat) => {
                const isActive = activeCategory === cat;
                return (
                  <Link
                    key={cat}
                    href={`/articles?category=${encodeURIComponent(cat)}`}
                    className={`rounded-full border px-3 py-1.5 text-xs font-semibold transition ${
                      isActive
                        ? "border-blue-400/50 bg-blue-500/20 text-blue-200"
                        : "border-white/10 bg-white/5 text-slate-400 hover:border-white/20 hover:text-slate-200"
                    }`}
                  >
                    {cat}
                  </Link>
                );
              })}
            </div>
          )}
        </div>
      </section>

      {/* Articles list */}
      <section className="mx-auto max-w-5xl px-6 py-12">
        <div className="space-y-4">
          {articles.length > 0 ? (
            articles.map((article) => (
              <ArticleCard key={article.slug} article={article} />
            ))
          ) : (
            <div className="rounded-xl border-2 border-dashed border-white/10 py-20 text-center">
              <p className="text-lg font-medium text-slate-500">
                {activeCategory
                  ? `No articles in "${activeCategory}" yet.`
                  : "No articles published yet."}
              </p>
              <p className="mt-1 text-sm text-slate-600">
                {activeCategory ? (
                  <Link href="/articles" className="underline hover:text-slate-400">
                    Clear filter
                  </Link>
                ) : (
                  "Run the pipeline to generate content."
                )}
              </p>
            </div>
          )}
        </div>
      </section>
    </div>
  );
}
