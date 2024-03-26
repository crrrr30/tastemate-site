import { textFont, displayFont } from "@/fonts";
import Image from "next/image";

export default function Header() {
  return (
    <nav className="w-full flex flex-col justify-between items-center lg:flex-row gap-8 px-4 py-8 lg:py-8 lg:px-24">
      <div className="flex flex-row gap-14 items-center">
        <Image
          src="/logo.svg"
          alt="TasteMate logo"
          width={32}
          height={32}
          priority
        />
        <span className={`${displayFont.className} font-semibold text-3xl text-gray-800`}>TasteMate</span>
      </div>
      <a href="mailto:tastemate@proton.me">
        <button className={`${textFont.className} text-base font-light border-solid border-2 border-gray-800 rounded-full py-6 px-12 `}>
          Contact Us
        </button>
      </a>
    </nav>
  );
}
