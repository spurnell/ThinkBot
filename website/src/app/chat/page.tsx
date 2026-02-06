import { Metadata } from "next";
import ChatPage from "@/components/chat/ChatPage";

export const metadata: Metadata = {
  title: "Chat with Policy Experts | ThinkBot",
  description:
    "Talk to ThinkBot's policy experts about tech regulation, AI governance, antitrust, and more.",
};

export default function Chat() {
  return <ChatPage />;
}
