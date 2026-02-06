import { type UIMessage } from "ai";
import { type ChatAgent } from "@/lib/agents";

interface ChatMessageProps {
  message: UIMessage;
  agent?: ChatAgent;
}

export default function ChatMessage({ message, agent }: ChatMessageProps) {
  const textContent = message.parts
    .filter((p) => p.type === "text")
    .map((p) => p.text)
    .join("");

  if (!textContent) return null;

  if (message.role === "user") {
    return (
      <div className="flex justify-end">
        <div className="max-w-[75%] rounded-2xl rounded-br-sm bg-blue-600 px-4 py-3 text-sm leading-relaxed text-white">
          {textContent.split("\n\n").map((p, i) => (
            <p key={i} className={i > 0 ? "mt-3" : ""}>
              {p}
            </p>
          ))}
        </div>
      </div>
    );
  }

  return (
    <div className="flex gap-3">
      {agent && (
        <div
          className={`flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-gradient-to-br ${agent.gradient} text-xs font-bold text-white`}
        >
          {agent.initials}
        </div>
      )}
      <div className="max-w-[75%] rounded-2xl rounded-tl-sm bg-[#1a2236] px-4 py-3 text-sm leading-relaxed text-slate-200">
        {textContent.split("\n\n").map((p, i) => (
          <p key={i} className={i > 0 ? "mt-3" : ""}>
            {p}
          </p>
        ))}
      </div>
    </div>
  );
}
