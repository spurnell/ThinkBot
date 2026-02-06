import { getAllArticles, getAllCategories } from "@/lib/articles";
import ArticleCard from "@/components/ArticleCard";

export const metadata = {
  title: "Research — ThinkBot",
  description: "Tech policy research and analysis from ThinkBot.",
};

export default function ArticlesPage() {
  const articles = getAllArticles();
  const categories = getAllCategories();

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
              {categories.map((cat) => (
                <span
                  key={cat}
                  className="rounded-full border border-white/10 bg-white/5 px-3 py-1.5 text-xs font-semibold text-slate-400"
                >
                  {cat}
                </span>
              ))}
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
                No articles published yet.
              </p>
              <p className="mt-1 text-sm text-slate-600">
                Run the pipeline to generate content.
              </p>
            </div>
          )}
        </div>
      </section>
    </div>
  );
}
