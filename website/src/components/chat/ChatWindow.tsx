"use client";

import { useEffect, useRef, useState } from "react";
import { type UIMessage, type ChatStatus } from "ai";
import { type ChatAgent } from "@/lib/agents";
import ChatMessage from "./ChatMessage";

interface ChatWindowProps {
  agent: ChatAgent;
  messages: UIMessage[];
  status: ChatStatus;
  onSendMessage: (text: string) => void;
}

export default function ChatWindow({
  agent,
  messages,
  status,
  onSendMessage,
}: ChatWindowProps) {
  const [input, setInput] = useState("");
  const scrollContainerRef = useRef<HTMLDivElement>(null);
  const userHasScrolled = useRef(false);
  const isAutoScrolling = useRef(false);

  const isLoading = status === "submitted" || status === "streaming";

  const handleScroll = () => {
    if (isAutoScrolling.current) return;
    const el = scrollContainerRef.current;
    if (!el) return;
    const nearBottom = el.scrollHeight - el.scrollTop - el.clientHeight < 40;
    userHasScrolled.current = !nearBottom;
  };

  useEffect(() => {
    if (!userHasScrolled.current) {
      const el = scrollContainerRef.current;
      if (el) {
        isAutoScrolling.current = true;
        el.scrollTop = el.scrollHeight;
        requestAnimationFrame(() => {
          isAutoScrolling.current = false;
        });
      }
    }
  }, [messages]);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!input.trim() || isLoading) return;
    userHasScrolled.current = false;
    onSendMessage(input.trim());
    setInput("");
  };

  const handleKeyDown = (e: React.KeyboardEvent<HTMLTextAreaElement>) => {
    if (e.key === "Enter" && !e.shiftKey) {
      e.preventDefault();
      if (input.trim() && !isLoading) {
        userHasScrolled.current = false;
        onSendMessage(input.trim());
        setInput("");
      }
    }
  };

  return (
    <div className="flex flex-1 flex-col">
      {/* Agent header */}
      <div className="flex items-center gap-3 border-b border-white/10 px-6 py-3">
        <div
          className={`flex h-8 w-8 items-center justify-center rounded-full bg-gradient-to-br ${agent.gradient} text-xs font-bold text-white`}
        >
          {agent.initials}
        </div>
        <div>
          <p className="text-sm font-medium text-white">{agent.displayName}</p>
          <p className="text-xs text-slate-500">{agent.domain}</p>
        </div>
      </div>

      {/* Messages */}
      <div ref={scrollContainerRef} onScroll={handleScroll} className="flex-1 overflow-y-auto px-6 py-6">
        {messages.length === 0 ? (
          <div className="flex h-full flex-col items-center justify-center text-center">
            <div
              className={`flex h-16 w-16 items-center justify-center rounded-2xl bg-gradient-to-br ${agent.gradient} text-xl font-bold text-white`}
            >
              {agent.initials}
            </div>
            <h3 className="mt-4 text-lg font-semibold text-white">
              {agent.title}
            </h3>
            <p className="mt-2 max-w-md text-sm text-slate-400">
              {agent.shortDescription}
            </p>
          </div>
        ) : (
          <div className="mx-auto flex max-w-3xl flex-col gap-4">
            {messages.map((m) => (
              <ChatMessage
                key={m.id}
                message={m}
                agent={m.role === "assistant" ? agent : undefined}
              />
            ))}
            {isLoading &&
              messages.length > 0 &&
              messages[messages.length - 1]?.role !== "assistant" && (
                <div className="flex gap-3">
                  <div
                    className={`flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-gradient-to-br ${agent.gradient} text-xs font-bold text-white`}
                  >
                    {agent.initials}
                  </div>
                  <div className="flex items-center gap-1 rounded-2xl rounded-tl-sm bg-[#1a2236] px-4 py-3">
                    <span className="h-2 w-2 animate-bounce rounded-full bg-slate-400 [animation-delay:0ms]" />
                    <span className="h-2 w-2 animate-bounce rounded-full bg-slate-400 [animation-delay:150ms]" />
                    <span className="h-2 w-2 animate-bounce rounded-full bg-slate-400 [animation-delay:300ms]" />
                  </div>
                </div>
              )}
            <div />
          </div>
        )}
      </div>

      {/* Input */}
      <div className="border-t border-white/10 px-6 py-4">
        <form onSubmit={handleSubmit} className="mx-auto flex max-w-3xl gap-3">
          <textarea
            value={input}
            onChange={(e) => setInput(e.target.value)}
            onKeyDown={handleKeyDown}
            placeholder={`Ask ${agent.displayName} a question...`}
            rows={1}
            className="flex-1 resize-none rounded-xl border border-white/10 bg-[#1a2236] px-4 py-3 text-sm text-white placeholder-slate-500 outline-none focus:border-blue-500/50 focus:ring-1 focus:ring-blue-500/30"
          />
          <button
            type="submit"
            disabled={!input.trim() || isLoading}
            className="rounded-xl bg-blue-600 px-5 py-3 text-sm font-medium text-white transition-colors hover:bg-blue-500 disabled:opacity-40 disabled:hover:bg-blue-600"
          >
            Send
          </button>
        </form>
      </div>
    </div>
  );
}
