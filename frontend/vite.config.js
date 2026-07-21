import { copyFileSync, existsSync } from "fs";
import { resolve } from "path";
import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

const faviconSrc = resolve(__dirname, "../images/favicon.webp");
const faviconDest = resolve(__dirname, "public/favicon.webp");

function syncFavicon() {
  if (existsSync(faviconSrc)) {
    copyFileSync(faviconSrc, faviconDest);
  }
}

export default defineConfig({
  plugins: [
    react(),
    {
      name: "sync-favicon",
      buildStart: syncFavicon,
      configureServer() {
        syncFavicon();
      },
    },
  ],
});
