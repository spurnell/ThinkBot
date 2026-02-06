export interface ChatAgent {
  id: string;
  displayName: string;
  title: string;
  domain: string;
  shortDescription: string;
  gradient: string;
  initials: string;
}

export const chatAgents: ChatAgent[] = [
  {
    id: "president",
    displayName: "The President",
    title: "President of ThinkBot",
    domain: "Strategy & Research Agenda",
    shortDescription:
      "Sets ThinkBot's strategic vision. Ask about tech policy trends, research priorities, or which issues matter most right now.",
    gradient: "from-blue-600 to-indigo-700",
    initials: "PR",
  },
  {
    id: "fellow-antitrust",
    displayName: "Antitrust Fellow",
    title: "Senior Fellow, Antitrust & Competition",
    domain: "Antitrust & Competition",
    shortDescription:
      "Expert on Big Tech antitrust, mergers, the FTC/DOJ, and the EU Digital Markets Act. Defends the consumer welfare standard.",
    gradient: "from-pink-500 to-rose-600",
    initials: "AT",
  },
  {
    id: "fellow-tech-innovation",
    displayName: "Innovation Fellow",
    title: "Senior Fellow, Tech & Innovation",
    domain: "Tech & Innovation",
    shortDescription:
      "Covers R&D policy, the CHIPS Act, startups, STEM immigration, and emerging technologies. Champions innovation-first policy.",
    gradient: "from-blue-500 to-cyan-500",
    initials: "TI",
  },
  {
    id: "fellow-ai",
    displayName: "AI Policy Fellow",
    title: "Senior Fellow, AI Policy",
    domain: "AI Policy",
    shortDescription:
      "Focuses on AI governance, foundation models, AI safety debates, and copyright. Advocates regulatory humility on AI.",
    gradient: "from-violet-500 to-purple-600",
    initials: "AI",
  },
  {
    id: "fellow-content-moderation",
    displayName: "Content Moderation Fellow",
    title: "Senior Fellow, Content Moderation & Speech",
    domain: "Content Moderation & Speech",
    shortDescription:
      "Covers Section 230, online speech, KOSA, child safety, and government jawboning. Champions free expression.",
    gradient: "from-amber-500 to-orange-500",
    initials: "CM",
  },
  {
    id: "fellow-general-tech",
    displayName: "General Tech Fellow",
    title: "Senior Fellow, General Technology Policy",
    domain: "Digital Economy & Cross-Cutting Policy",
    shortDescription:
      "Handles privacy, cybersecurity, crypto, telecom, and digital trade. The utility player for broad tech policy questions.",
    gradient: "from-emerald-500 to-teal-600",
    initials: "GT",
  },
];

export function getAgent(id: string): ChatAgent | undefined {
  return chatAgents.find((a) => a.id === id);
}

export const agentIds = chatAgents.map((a) => a.id);
