# See webpack.config.js for more examples:
# https://github.com/webpack/webpack-with-common-libs/blob/master/webpack.config.js

path = require 'path'
webpack = require 'webpack'

# webpack-dev-server options used in gulpfile
# https://github.com/webpack/webpack-dev-server

module.exports =

  contentBase: "#{__dirname}/src"

  cache: true

  entry:
    jquery: './bower_components/jquery/dist/jquery'

  # bootstrap: ['bootstrap-webpack!./app/bootstrap/bootstrap.config.js', './app/bootstrap']
  output:
    path: path.join(__dirname, 'dist')
    publicPath: 'dist/'
    filename: '[name].js'
    chunkFilename: '[chunkhash].js'

  module:
    loaders: [
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
      jquery: 'jquery-2.1.0'

  plugins: [
    new webpack.ProvidePlugin
      # Automtically detect jQuery and $ as free var in modules
      # and inject the jquery library
      # This is required by many jquery plugins
      jQuery: 'jquery'
      $: 'jquery'
  ]
