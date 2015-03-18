exports.config =

  paths:
    public: 'public'
    watched: ['app', 'scss', 'vendor']

  modules:
    wrapper: 'commonjs'
    definition: 'commonjs'

  skip_files: []

  files:
    javascripts:
      joinTo:
        'js/main.js': /^app/
        'js/vendor/vendor.js': /^vendor/
      order:
        before: []

    stylesheets:
      defaultExtension: 'scss'
      joinTo:
        'css/styles.min.css': /^scss/
      order:
        before: []

    templates:
      joinTo: 'js/template.js'

  plugins:
    sass:
      mode: 'ruby'
      options: ['--style compressed']

    jade:
      options:
        pretty: true

      static_jade:
        extension: ".static.jade"