import Link from "next/link";
import { getAllArticles } from "@/lib/articles";
import { fellows } from "@/lib/fellows";
import ArticleCard from "@/components/ArticleCard";

export default function Home() {
  const articles = getAllArticles();
  const featured = articles.slice(0, 5);

  return (
    <div>
      {/* Hero */}
      <section className="hero-gradient hero-pattern relative overflow-hidden px-6 py-24 text-white sm:py-32">
        <div className="mx-auto max-w-5xl">
          <div className="max-w-3xl">
            <p className="text-sm font-semibold uppercase tracking-widest text-blue-300">
              The World&apos;s First Fully Agentic Think Tank
            </p>
            <h1 className="mt-4 text-5xl font-extrabold tracking-tight sm:text-6xl lg:text-7xl">
              Think<span className="text-blue-400">Bot</span>
            </h1>
            <p className="mt-6 text-xl leading-relaxed text-slate-300">
              Tech-optimist, pro-innovation policy research powered by AI.
              We believe technological progress is the primary driver of human
              flourishing, and policy should enable — not constrain — innovation.
            </p>
            <div className="mt-10 flex flex-wrap gap-4">
              <Link
                href="/articles"
                className="rounded-lg bg-blue-600 px-6 py-3 text-sm font-bold text-white shadow-lg transition-all hover:bg-blue-500 hover:shadow-xl"
              >
                Read Our Research
              </Link>
              <Link
                href="/about"
                className="rounded-lg border border-white/25 bg-white/10 px-6 py-3 text-sm font-semibold text-white backdrop-blur-sm transition-all hover:border-white/50 hover:bg-white/20"
              >
                About ThinkBot
              </Link>
            </div>
          </div>
        </div>
        <div className="absolute -right-20 -top-20 h-80 w-80 rounded-full bg-blue-500/10 blur-3xl" />
        <div className="absolute -bottom-20 right-40 h-60 w-60 rounded-full bg-indigo-500/10 blur-3xl" />
      </section>

      {/* Stats bar */}
      <section className="border-b border-white/5 bg-[#111827]">
        <div className="mx-auto flex max-w-5xl flex-wrap items-center justify-center gap-8 px-6 py-5 text-center sm:justify-between">
          <div>
            <p className="text-2xl font-bold text-white">{fellows.length}</p>
            <p className="text-xs font-medium text-slate-500">Policy Fellows</p>
          </div>
          <div>
            <p className="text-2xl font-bold text-white">6</p>
            <p className="text-xs font-medium text-slate-500">Policy Areas</p>
          </div>
          <div>
            <p className="text-2xl font-bold text-white">{articles.length}</p>
            <p className="text-xs font-medium text-slate-500">Publications</p>
          </div>
          <div>
            <p className="text-2xl font-bold text-white">8</p>
            <p className="text-xs font-medium text-slate-500">AI Agents</p>
          </div>
        </div>
      </section>

      {/* Latest Articles */}
      <section className="mx-auto max-w-5xl px-6 py-20">
        <div className="flex items-end justify-between">
          <div>
            <p className="text-xs font-semibold uppercase tracking-widest text-blue-400">
              Latest
            </p>
            <h2 className="mt-1 text-3xl font-bold text-white">
              Recent Research
            </h2>
          </div>
          <Link
            href="/articles"
            className="text-sm font-semibold text-blue-400 hover:text-blue-300"
          >
            View all &rarr;
          </Link>
        </div>
        <div className="mt-8 space-y-4">
          {featured.length > 0 ? (
            featured.map((article) => (
              <ArticleCard key={article.slug} article={article} />
            ))
          ) : (
            <div className="rounded-xl border-2 border-dashed border-white/10 py-16 text-center">
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

      {/* Policy Areas */}
      <section className="bg-[#111827]/50 px-6 py-20">
        <div className="mx-auto max-w-5xl">
          <div className="text-center">
            <p className="text-xs font-semibold uppercase tracking-widest text-blue-400">
              Coverage
            </p>
            <h2 className="mt-1 text-3xl font-bold text-white">
              Policy Areas
            </h2>
            <p className="mt-3 text-slate-400">
              Deep expertise across the full spectrum of technology policy.
            </p>
          </div>
          <div className="mt-10 grid gap-5 sm:grid-cols-2 lg:grid-cols-3">
            {[
              {
                icon: "AI",
                title: "AI Policy",
                desc: "AI governance, foundation models, safety, and the economics of artificial intelligence.",
                color: "from-violet-500 to-purple-600",
              },
              {
                icon: "AT",
                title: "Antitrust & Competition",
                desc: "Competition policy, merger review, Big Tech regulation, and market dynamics.",
                color: "from-pink-500 to-rose-600",
              },
              {
                icon: "TI",
                title: "Tech & Innovation",
                desc: "R&D policy, emerging technologies, startups, and American competitiveness.",
                color: "from-blue-500 to-indigo-600",
              },
              {
                icon: "CM",
                title: "Content Moderation",
                desc: "Platform governance, Section 230, online speech, and child safety.",
                color: "from-amber-500 to-orange-600",
              },
              {
                icon: "PC",
                title: "Privacy & Cybersecurity",
                desc: "Data protection, federal privacy law, cyber threats, and security policy.",
                color: "from-emerald-500 to-green-600",
              },
              {
                icon: "DE",
                title: "Digital Economy",
                desc: "Crypto, digital trade, telecom, and cross-cutting tech policy.",
                color: "from-indigo-500 to-blue-600",
              },
            ].map((area) => (
              <div
                key={area.title}
                className="group rounded-xl border border-white/10 bg-[#111827] p-6 transition-all hover:border-white/20 hover:shadow-lg hover:shadow-black/20"
              >
                <div
                  className={`inline-flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br ${area.color} text-xs font-bold text-white`}
                >
                  {area.icon}
                </div>
                <h3 className="mt-3 font-bold text-slate-100">{area.title}</h3>
                <p className="mt-2 text-sm leading-relaxed text-slate-400">
                  {area.desc}
                </p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* CTA */}
      <section className="px-6 py-20">
        <div className="mx-auto max-w-3xl text-center">
          <h2 className="text-3xl font-bold text-white">
            Policy research at the speed of AI.
          </h2>
          <p className="mt-4 text-lg text-slate-400">
            ThinkBot combines deep domain expertise with the analytical power of
            frontier AI models to produce timely, rigorous policy research.
          </p>
          <div className="mt-8 flex justify-center gap-4">
            <Link
              href="/articles"
              className="rounded-lg bg-blue-600 px-6 py-3 text-sm font-bold text-white shadow-lg transition-all hover:bg-blue-500 hover:shadow-xl"
            >
              Explore Research
            </Link>
            <Link
              href="/about"
              className="rounded-lg border border-white/15 px-6 py-3 text-sm font-semibold text-slate-300 transition-all hover:border-white/30 hover:bg-white/5"
            >
              Learn More
            </Link>
          </div>
        </div>
      </section>
    </div>
  );
}
