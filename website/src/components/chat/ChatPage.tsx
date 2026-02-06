"use client";

import { useMemo, useRef, useState } from "react";
import { DefaultChatTransport } from "ai";
import { useChat } from "@ai-sdk/react";
import { chatAgents, getAgent } from "@/lib/agents";
import AgentPicker from "./AgentPicker";
import ChatWindow from "./ChatWindow";

export default function ChatPage() {
  const [selectedAgentId, setSelectedAgentId] = useState(chatAgents[0].id);
  const agent = getAgent(selectedAgentId)!;
  const agentIdRef = useRef(selectedAgentId);
  agentIdRef.current = selectedAgentId;

  const transport = useMemo(
    () =>
      new DefaultChatTransport({
        api: "/api/chat",
        body: () => ({ agentId: agentIdRef.current }),
      }),
    []
  );

  const { messages, sendMessage, status, setMessages } = useChat({
    transport,
  });

  const handleAgentChange = (id: string) => {
    if (id === selectedAgentId) return;
    setSelectedAgentId(id);
    setMessages([]);
  };

  const handleSendMessage = (text: string) => {
    sendMessage({ text });
  };

  return (
    <div className="flex h-[calc(100vh-73px)]">
      <AgentPicker selected={selectedAgentId} onSelect={handleAgentChange} />
      <ChatWindow
        agent={agent}
        messages={messages}
        status={status}
        onSendMessage={handleSendMessage}
      />
    </div>
  );
}
