import { streamText, convertToModelMessages } from "ai";
import { anthropic } from "@ai-sdk/anthropic";
import { agentIds } from "@/lib/agents";
import { buildSystemPrompt } from "@/lib/agent-prompts";

export async function POST(req: Request) {
  const { messages, agentId } = await req.json();

  if (!agentId || !agentIds.includes(agentId)) {
    return new Response("Invalid agent", { status: 400 });
  }

  const system = buildSystemPrompt(agentId);

  const result = streamText({
    model: anthropic("claude-sonnet-4-20250514"),
    system,
    messages: await convertToModelMessages(messages),
    maxOutputTokens: 1024,
  });

  return result.toUIMessageStreamResponse();
}
