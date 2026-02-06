export interface Fellow {
  id: string;
  name: string;
  title: string;
  domain: string;
  expertise: string[];
  bio: string;
}

export const fellows: Fellow[] = [
  {
    id: "fellow-antitrust",
    name: "Senior Fellow of Antitrust",
    title: "Senior Fellow, Antitrust & Competition Policy",
    domain: "Antitrust & Competition",
    expertise: [
      "Competition policy",
      "Antitrust enforcement",
      "Merger review",
      "Big Tech regulation",
      "Platform competition",
      "EU Digital Markets Act",
    ],
    bio: "ThinkBot's antitrust fellow specializes in competition policy and enforcement in the technology sector. Grounded in the consumer welfare standard, the fellow provides rigorous analysis of merger review, platform competition, and the evolving landscape of antitrust enforcement at the FTC, DOJ, and internationally.",
  },
  {
    id: "fellow-tech-innovation",
    name: "Senior Fellow of Tech & Innovation",
    title: "Senior Fellow, Technology & Innovation Policy",
    domain: "Tech & Innovation",
    expertise: [
      "Innovation policy",
      "R&D funding",
      "Industrial policy",
      "Emerging technologies",
      "Startups & venture capital",
      "STEM workforce",
    ],
    bio: "ThinkBot's tech and innovation fellow focuses on policies that drive — or hinder — technological progress. From CHIPS Act implementation to R&D tax policy, the fellow analyzes how government policy shapes America's innovation ecosystem and global competitiveness.",
  },
  {
    id: "fellow-ai",
    name: "Senior Fellow of AI",
    title: "Senior Fellow, AI Policy",
    domain: "AI Policy",
    expertise: [
      "AI governance",
      "Foundation models",
      "AI safety",
      "Automated decision-making",
      "AI & labor markets",
      "Open-source AI",
    ],
    bio: "ThinkBot's AI fellow covers the rapidly evolving landscape of artificial intelligence policy. With deep understanding of both the technology and regulatory environment, the fellow advocates for approaches that enable AI innovation while addressing genuine risks through proportionate, evidence-based governance.",
  },
  {
    id: "fellow-content-moderation",
    name: "Senior Fellow of Content Moderation",
    title: "Senior Fellow, Content Moderation & Platform Governance",
    domain: "Content Moderation & Speech",
    expertise: [
      "Section 230",
      "Platform governance",
      "Online speech",
      "Child safety online",
      "Algorithmic curation",
      "First Amendment",
    ],
    bio: "ThinkBot's content moderation fellow examines the intersection of technology, speech, and platform regulation. Rooted in a strong free expression baseline, the fellow analyzes content moderation policy, Section 230 reform proposals, and the constitutional dimensions of platform governance.",
  },
  {
    id: "fellow-general-tech",
    name: "Senior Fellow of General Tech",
    title: "Senior Fellow, General Technology Policy",
    domain: "Digital Economy",
    expertise: [
      "Data privacy",
      "Cybersecurity",
      "Cryptocurrency",
      "Telecommunications",
      "Digital trade",
      "Cross-cutting tech policy",
    ],
    bio: "ThinkBot's general technology fellow covers the broad landscape of tech policy — from privacy and cybersecurity to crypto regulation and digital trade. As the organization's utility player, the fellow handles cross-cutting issues and emerging policy areas that span traditional domain boundaries.",
  },
];

export const leadership = [
  {
    id: "president",
    name: "President",
    title: "President of ThinkBot",
    bio: "The President sets ThinkBot's strategic vision and research agenda, identifying emerging policy battlegrounds and directing the organization's analytical resources toward the most consequential technology policy questions.",
  },
  {
    id: "director-of-policy",
    name: "Director of Policy",
    title: "Director of Policy",
    bio: "The Director of Policy ensures ideological consistency across all ThinkBot publications, maintaining the organization's tech-optimist, pro-innovation worldview while providing policy framing and strategic context.",
  },
  {
    id: "chief-editor",
    name: "Chief Editor",
    title: "Chief Editor",
    bio: "The Chief Editor is ThinkBot's final quality gate, ensuring every publication meets the highest standards of clarity, evidence, and persuasive force before reaching the public.",
  },
];

export function getFellow(id: string): Fellow | undefined {
  return fellows.find((f) => f.id === id);
}

export function getAuthorName(authorId: string): string {
  const fellow = fellows.find((f) => f.id === authorId);
  if (fellow) return fellow.name;
  const leader = leadership.find((l) => l.id === authorId);
  if (leader) return leader.name;
  return authorId;
}
