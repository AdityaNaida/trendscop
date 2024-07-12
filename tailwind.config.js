/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./views/**/*.ejs", "./public/**/*.html"],
  theme: {
    extend: {
      fontFamily: {
        geist: ["Geist", "Arial", "sans-serif"],
      },
    },
  },
  plugins: [],
};
