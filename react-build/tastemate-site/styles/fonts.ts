import { DM_Sans, DM_Serif_Display } from "next/font/google";

const textFont = DM_Sans({ weight: "variable", subsets: ["latin"] });
const displayFont = DM_Serif_Display({ weight: ["400"], subsets: ["latin"] });

export { textFont, displayFont }