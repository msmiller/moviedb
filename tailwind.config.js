module.exports = {
  mode: 'jit',
  purge: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/components/**/*.html.erb',
    './app/components/**/*.rb',
    './app/javascript/**/*.js',
  ],
  plugins: [
    require('@tailwindcss/line-clamp'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/aspect-ratio'),
  ],
}
