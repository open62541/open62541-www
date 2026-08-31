/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./layouts/**/*.html",
    "./content/**/*.{html,md}",
    "./themes/hugo-saasify-theme/layouts/**/*.html"
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#eaf4fb',
          100: '#d0e8f6',
          200: '#a8d2ed',
          300: '#74b6e2',
          400: '#409ad5',
          500: '#2e8ece',
          600: '#2980b9',
          700: '#21698c',
          800: '#1a5269',
          900: '#143b4d',
        },
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
        heading: ['Plus Jakarta Sans', 'sans-serif'],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
  ],
}
