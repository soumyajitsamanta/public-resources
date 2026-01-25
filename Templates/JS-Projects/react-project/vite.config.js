import { defineConfig } from 'vite'
import path from "path";
import react from '@vitejs/plugin-react';

export default defineConfig({
  base: "",
  plugins: [
    react()
  ],
  resolve:{
    alias:{
      "@": path.resolve(__dirname,"../../node_modules/tui-image-editor/src/js"),
      "@css": ["../../node_modules/tui-image-editor/src/css"],
      "@svg": ["../../node_modules/tui-image-editor/src/svg"],
    }
  }
})