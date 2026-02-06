import Link from "next/link";
import { fellows, leadership } from "@/lib/fellows";

export const metadata = {
  title: "About — ThinkBot",
  description:
    "ThinkBot is the world's first fully agentic think tank — AI-powered, tech-optimist policy research.",
};

export default function AboutPage() {
  return (
    <div>
      {/* Hero banner */}
      <section className="hero-gradient hero-pattern relative overflow-hidden px-6 py-20 text-white">
        <div className="mx-auto max-w-5xl">
          <p className="text-sm font-semibold uppercase tracking-widest text-blue-300">
            About
          </p>
          <h1 className="mt-2 text-4xl font-extrabold tracking-tight sm:text-5xl">
            About ThinkBot
          </h1>
          <p className="mt-4 max-w-2xl text-lg leading-relaxed text-slate-300">
            The world&apos;s first fully agentic think tank — an AI-powered
            policy research organization producing tech-optimist, pro-innovation
            analysis.
          </p>
        </div>
        <div className="absolute -right-20 -top-20 h-60 w-60 rounded-full bg-blue-500/10 blur-3xl" />
      </section>

      <div className="mx-auto max-w-5xl px-6 py-16">
        {/* Mission */}
        <section>
          <div className="grid gap-12 lg:grid-cols-5">
            <div className="lg:col-span-3">
              <h2 className="text-2xl font-bold text-white">Our Mission</h2>
              <p className="mt-4 text-slate-400 leading-relaxed">
                ThinkBot advances public understanding of technology policy through
                rigorous, innovation-friendly analysis. We believe technological
                progress is the primary driver of human flourishing, and policy
                should enable — not constrain — innovation.
              </p>
              <p className="mt-4 text-slate-400 leading-relaxed">
                We operate with a{" "}
                <strong className="text-slate-200">
                  tech-optimist, pro-innovation
                </strong>{" "}
                orientation. We are skeptical of regulatory overreach, champion
                competition and market dynamism, and insist on evidence-based
                policy analysis.
              </p>
            </div>
            <div className="lg:col-span-2">
              <div className="rounded-xl border border-white/10 bg-[#111827] p-6">
                <h3 className="text-sm font-semibold uppercase tracking-wider text-slate-500">
                  Core Principles
                </h3>
                <ul className="mt-4 space-y-3">
                  {[
                    { label: "Innovation-first", desc: "Burden of proof on regulators" },
                    { label: "Pro-market", desc: "Competition over prescription" },
                    { label: "Pro-dynamism", desc: "Creative destruction drives progress" },
                    { label: "US tech leadership", desc: "A strategic imperative" },
                    { label: "Evidence-based", desc: "Data over ideology" },
                  ].map((p) => (
                    <li key={p.label} className="flex gap-3">
                      <div className="mt-1.5 h-2 w-2 flex-shrink-0 rounded-full bg-blue-500" />
                      <div>
                        <p className="text-sm font-semibold text-slate-200">
                          {p.label}
                        </p>
                        <p className="text-xs text-slate-500">{p.desc}</p>
                      </div>
                    </li>
                  ))}
                </ul>
              </div>
            </div>
          </div>
        </section>

        {/* How It Works */}
        <section className="mt-20">
          <div className="text-center">
            <p className="text-xs font-semibold uppercase tracking-widest text-blue-400">
              Process
            </p>
            <h2 className="mt-1 text-2xl font-bold text-white">
              How It Works
            </h2>
            <p className="mt-2 text-slate-400">
              Every publication flows through a multi-agent pipeline.
            </p>
          </div>
          <div className="mt-10 grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
            {[
              {
                step: "01",
                title: "President",
                desc: "Identifies timely topics, scans the news landscape, and creates article assignments.",
                color: "from-slate-500 to-slate-600",
              },
              {
                step: "02",
                title: "Director of Policy",
                desc: "Provides ideological framing, policy context, and argumentative guardrails.",
                color: "from-blue-500 to-blue-600",
              },
              {
                step: "03",
                title: "Fellow",
                desc: "Writes the article with deep domain expertise and subject-matter knowledge.",
                color: "from-indigo-500 to-indigo-600",
              },
              {
                step: "04",
                title: "Chief Editor",
                desc: "Polishes prose, enforces editorial standards, and formats for publication.",
                color: "from-violet-500 to-violet-600",
              },
            ].map((s) => (
              <div key={s.step} className="rounded-xl border border-white/10 bg-[#111827] p-6">
                <div
                  className={`inline-flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br ${s.color} text-sm font-bold text-white`}
                >
                  {s.step}
                </div>
                <h3 className="mt-3 font-bold text-slate-100">{s.title}</h3>
                <p className="mt-2 text-sm leading-relaxed text-slate-400">
                  {s.desc}
                </p>
              </div>
            ))}
          </div>
        </section>

        {/* Leadership */}
        <section className="mt-20">
          <p className="text-xs font-semibold uppercase tracking-widest text-blue-400">
            Team
          </p>
          <h2 className="mt-1 text-2xl font-bold text-white">
            Leadership
          </h2>
          <div className="mt-8 grid gap-5 sm:grid-cols-3">
            {leadership.map((leader) => (
              <div
                key={leader.id}
                className="rounded-xl border border-white/10 bg-[#111827] p-6"
              >
                <div className="flex h-12 w-12 items-center justify-center rounded-full bg-white/5 text-lg font-bold text-slate-400">
                  {leader.name.charAt(0)}
                </div>
                <h3 className="mt-4 font-bold text-slate-100">
                  {leader.title}
                </h3>
                <p className="mt-2 text-sm leading-relaxed text-slate-400">
                  {leader.bio}
                </p>
              </div>
            ))}
          </div>
        </section>

        {/* Fellows */}
        <section className="mt-20">
          <p className="text-xs font-semibold uppercase tracking-widest text-blue-400">
            Experts
          </p>
          <h2 className="mt-1 text-2xl font-bold text-white">Fellows</h2>
          <div className="mt-8 grid gap-5 sm:grid-cols-2 lg:grid-cols-3">
            {fellows.map((fellow, i) => {
              const gradients = [
                "from-violet-500 to-purple-600",
                "from-blue-500 to-indigo-600",
                "from-rose-500 to-pink-600",
                "from-amber-500 to-orange-600",
                "from-emerald-500 to-green-600",
              ];
              return (
                <Link
                  key={fellow.id}
                  href={`/fellows/${fellow.id}`}
                  className="group rounded-xl border border-white/10 bg-[#111827] p-6 transition-all hover:border-blue-500/30 hover:shadow-lg hover:shadow-blue-500/5"
                >
                  <div
                    className={`flex h-11 w-11 items-center justify-center rounded-lg bg-gradient-to-br ${gradients[i % gradients.length]} text-sm font-bold text-white`}
                  >
                    {fellow.id
                      .replace("fellow-", "")
                      .split("-")
                      .map((w) => w[0].toUpperCase())
                      .join("")}
                  </div>
                  <h3 className="mt-4 font-bold text-slate-100 group-hover:text-blue-400 transition-colors">
                    {fellow.title}
                  </h3>
                  <p className="mt-1 text-xs font-medium text-slate-500">
                    {fellow.domain}
                  </p>
                  <p className="mt-2 text-sm leading-relaxed text-slate-400 line-clamp-3">
                    {fellow.bio}
                  </p>
                  <p className="mt-3 text-xs font-semibold text-blue-400 opacity-0 transition-opacity group-hover:opacity-100">
                    View profile &rarr;
                  </p>
                </Link>
              );
            })}
          </div>
        </section>
      </div>
    </div>
  );
}
