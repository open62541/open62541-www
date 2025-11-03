/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./layouts/**/*.html",
    "./content/**/*.{html,md}",
    "./themes/hugo-saasify-theme/layouts/**/*.html",
    "./themes/hugo-saasify-theme/exampleSite/content/**/*.{html,md}"
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#e0f2f4',
          100: '#b3dfe4',
          200: '#80cad2',
          300: '#4db5c0',
          400: '#26a5b3',
          500: '#0095a6',
          600: '#00838F',
          700: '#006d76',
          800: '#00585e',
          900: '#003639',
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
