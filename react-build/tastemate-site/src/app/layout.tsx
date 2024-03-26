import "./globals.css";
import { textFont } from "@/fonts";

import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "TasteMate",
  description:
    "TasteMate is a recipe generation application that suits your personalized dietary needs.",
  icons: [{ url: "/favicon.png", rel: "icon", type: "image/x-icon" }],
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={`${textFont.className} min-h-screen`}>
        {children}
      </body>
    </html>
  );
}
