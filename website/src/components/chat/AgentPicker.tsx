import { chatAgents, type ChatAgent } from "@/lib/agents";

interface AgentPickerProps {
  selected: string;
  onSelect: (id: string) => void;
}

export default function AgentPicker({ selected, onSelect }: AgentPickerProps) {
  return (
    <aside className="flex w-72 shrink-0 flex-col border-r border-white/10 bg-[#0d1117]">
      <div className="border-b border-white/10 px-5 py-4">
        <h2 className="text-sm font-semibold text-white">Policy Experts</h2>
        <p className="mt-1 text-xs text-slate-500">
          Choose an expert to chat with
        </p>
      </div>
      <div className="flex-1 overflow-y-auto p-3">
        <div className="flex flex-col gap-2">
          {chatAgents.map((agent: ChatAgent) => (
            <button
              key={agent.id}
              onClick={() => onSelect(agent.id)}
              className={`flex items-start gap-3 rounded-xl px-3 py-3 text-left transition-colors ${
                selected === agent.id
                  ? "bg-blue-600/15 ring-1 ring-blue-500/40"
                  : "hover:bg-white/5"
              }`}
            >
              <div
                className={`flex h-9 w-9 shrink-0 items-center justify-center rounded-full bg-gradient-to-br ${agent.gradient} text-xs font-bold text-white`}
              >
                {agent.initials}
              </div>
              <div className="min-w-0">
                <p
                  className={`text-sm font-medium ${
                    selected === agent.id ? "text-blue-400" : "text-slate-200"
                  }`}
                >
                  {agent.displayName}
                </p>
                <p className="mt-0.5 text-xs text-slate-500">{agent.domain}</p>
              </div>
            </button>
          ))}
        </div>
      </div>
    </aside>
  );
}
