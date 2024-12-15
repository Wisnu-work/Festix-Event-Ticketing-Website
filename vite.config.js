import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'



// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  base: '/Festix-Event-Ticketing-Website/',
  build: {
    rollupOptions: {
      external: ['fsevents'], // Tambahkan fsevents ke daftar eksternal
    },
  },
});
