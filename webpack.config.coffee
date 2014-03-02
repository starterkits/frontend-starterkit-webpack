path = require('path')
webpack = require('webpack')

module.exports =
  cache: true

  entry:
    jquery: './app/jquery'
    bootstrap: [
      'bootstrap-webpack!./app/bootstrap/bootstrap.config.js'
      './app/bootstrap'
    ]

  output:
    path: path.join(__dirname, 'dist')
    publicPath: 'dist/'
    filename: '[name].js'
    chunkFilename: '[chunkhash].js'

  module:
    loaders: [
      {
        test: /\.coffee$/
        loader: 'coffee'
      }
      {
        # required to write 'require('./style.css')'
        test: /\.css$/
        loader: 'style-loader!css-loader'
      }
      {
        # required for bootstrap icons
        test: /\.woff$/
        loader: 'url-loader?prefix=font/&limit=5000&minetype=application/font-woff'
      }
      {
        test: /\.ttf$/
        loader: 'file-loader?prefix=font/'
      }
      {
        test: /\.eot$/
        loader: 'file-loader?prefix=font/'
      }
      {
        test: /\.svg$/
        loader: 'file-loader?prefix=font/'
      }
    ]

  resolve:
    alias:
      # Bind version of jquery
      jquery: 'jquery-2.0.3'

      extensions:
        ['', '.web.coffee', '.web.js', '.coffee', '.js']

  plugins: [new webpack.ProvidePlugin(
    # Automtically detect jQuery and $ as free var in modules
    # and inject the jquery library
    # This is required by many jquery plugins
    jQuery: 'jquery'
    $: 'jquery'
  )]
