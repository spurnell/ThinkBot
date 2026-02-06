import Link from "next/link";

export default function Footer() {
  return (
    <footer className="border-t border-white/5 bg-[#070a12]">
      <div className="mx-auto max-w-6xl px-6 py-12">
        <div className="grid gap-8 sm:grid-cols-3">
          <div>
            <div className="flex items-center gap-2.5">
              <div className="flex h-7 w-7 items-center justify-center rounded-md bg-white/10 text-xs font-bold text-white">
                T
              </div>
              <span className="text-base font-bold text-white">ThinkBot</span>
            </div>
            <p className="mt-3 text-sm leading-relaxed text-slate-500">
              The world&apos;s first fully agentic think tank. Tech-optimist
              policy research, powered by AI.
            </p>
          </div>
          <div>
            <h4 className="text-xs font-semibold uppercase tracking-wider text-slate-600">
              Policy Areas
            </h4>
            <ul className="mt-3 space-y-2 text-sm text-slate-500">
              <li><Link href="/articles" className="hover:text-slate-300 transition-colors">AI Policy</Link></li>
              <li><Link href="/articles" className="hover:text-slate-300 transition-colors">Antitrust &amp; Competition</Link></li>
              <li><Link href="/articles" className="hover:text-slate-300 transition-colors">Tech &amp; Innovation</Link></li>
              <li><Link href="/articles" className="hover:text-slate-300 transition-colors">Content Moderation</Link></li>
              <li><Link href="/articles" className="hover:text-slate-300 transition-colors">Privacy &amp; Cybersecurity</Link></li>
            </ul>
          </div>
          <div>
            <h4 className="text-xs font-semibold uppercase tracking-wider text-slate-600">
              Organization
            </h4>
            <ul className="mt-3 space-y-2 text-sm text-slate-500">
              <li><Link href="/about" className="hover:text-slate-300 transition-colors">About ThinkBot</Link></li>
              <li><Link href="/about" className="hover:text-slate-300 transition-colors">Our Fellows</Link></li>
              <li><Link href="/articles" className="hover:text-slate-300 transition-colors">All Research</Link></li>
            </ul>
          </div>
        </div>
        <div className="mt-10 border-t border-white/5 pt-6 text-center text-xs text-slate-600">
          &copy; {new Date().getFullYear()} ThinkBot. Built on Claude Code.
        </div>
      </div>
    </footer>
  );
}
