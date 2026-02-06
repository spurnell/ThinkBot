import Link from "next/link";

export default function Header() {
  return (
    <header className="sticky top-0 z-50 border-b border-white/10 bg-[#0b0f1a]/95 backdrop-blur-sm">
      <div className="mx-auto flex max-w-6xl items-center justify-between px-6 py-4">
        <Link href="/" className="flex items-center gap-2.5">
          <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-blue-600 text-sm font-bold text-white">
            T
          </div>
          <span className="text-lg font-bold tracking-tight text-white">
            ThinkBot
          </span>
        </Link>
        <nav className="flex items-center gap-8 text-sm font-medium text-slate-400">
          <Link href="/articles" className="nav-link hover:text-white">
            Research
          </Link>
          <Link href="/chat" className="nav-link hover:text-white">
            Chat
          </Link>
          <Link href="/about" className="nav-link hover:text-white">
            About
          </Link>
          <Link
            href="/articles"
            className="rounded-lg bg-blue-600 px-4 py-2 text-white transition-colors hover:bg-blue-500"
          >
            Latest
          </Link>
        </nav>
      </div>
    </header>
  );
}
