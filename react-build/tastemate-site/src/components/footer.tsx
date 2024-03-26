import { textFont } from "@/fonts";

export default function Footer() {
  return (
    <footer className="bg-transparent w-full p-4">
      <div className="flex flex-row justify-center items-center py-4">
        <a href="#" className={`${textFont.className} text-sm underline`}>
          Privacy Policy
        </a>
      </div>
    </footer>
  );
}
