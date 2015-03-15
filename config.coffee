exports.config =
  plugins:
    sass:
      mode: 'ruby'
      options: ['--style compressed']

  paths:
    public: 'public'
    watched: ['app', 'scss']

  skip_files: []
  modules:
    wrapper: 'commonjs'
    definition: 'commonjs'

  files:
    javascripts:
      joinTo:
        'js/main.js': /^app/

    stylesheets:
      defaultExtension: 'scss'
      joinTo:
        'css/styles.min.css': /^scss/