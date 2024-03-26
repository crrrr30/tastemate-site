import Footer from "@/components/footer";
import Header from "@/components/header";

import { GoDownload } from "react-icons/go";
import { textFont, displayFont } from "@/fonts";

export default function Home() {
  return (
    <>
      <Header />
      <main className="flex flex-row items-left justify-between px-24 py-[8rem]">
        <div className="flex flex-col justify-center gap-20">
          <span
            className={`${displayFont.className} font-semibold text-6xl text-gray-800`}
          >
            Personalized Diet, <br />
            Redefined.
          </span>
          <span
            className={`${textFont.className} text-lg font-medium text-gray-800`}
          >
            TasteMate is a revolutionary product that utilizes AI to optimize
            your everyday diet, from generating recipes when you are in the mood
            for Chinese, to creating a personalized, hassle-free meal plan
            suited to your medical or dietary restrictions.
          </span>
          <a href="mailto:tastemate@proton.me">
            <button
              type="button"
              className={`${textFont.className} text-base font-light border-solid border-2 border-gray-800 rounded-full py-6 px-24`}
            >
              <div className="w-full flex flex-row justify-center gap-6 items-center">
                <GoDownload size={24} />
                Download Demo
              </div>
            </button>
          </a>
        </div>
      </main>
      <Footer />
    </>
  );
}
