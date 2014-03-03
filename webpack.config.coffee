# See webpack.config.js for more examples:
# https://github.com/webpack/webpack-with-common-libs/blob/master/webpack.config.js

path = require 'path'
webpack = require 'webpack'

# webpack-dev-server options used in gulpfile
# https://github.com/webpack/webpack-dev-server

module.exports =

  contentBase: "#{__dirname}/src/"

  cache: true

  entry:
    app: './src/js/app'
    head: './src/js/head'

  output:
    path: path.join(__dirname, 'dist')
    publicPath: 'dist/'
    filename: '[name].js'
    chunkFilename: '[chunkhash].js'

  module:
    loaders: [
      {
        test: /\.coffee$/
        loader: 'coffee-loader'
      }
      {
        test: /\.scss$/,
        loader: "style-loader!sass-loader?outputStyle=expanded&includePaths[]=./bower_components/foundation/scss/"
      }
      {
        # required to write 'require('./style.css')'
        test: /\.css$/
        loader: 'style-loader!css-loader'
      }
      # {
      #   test: /\.woff$/
      #   loader: 'url-loader?prefix=font/&limit=5000&minetype=application/font-woff'
      # }
      # {
      #   test: /\.ttf$/
      #   loader: 'file-loader?prefix=font/'
      # }
      # {
      #   test: /\.eot$/
      #   loader: 'file-loader?prefix=font/'
      # }
      # {
      #   test: /\.svg$/
      #   loader: 'file-loader?prefix=font/'
      # }
    ]

  resolve:
    extensions: ['', '.webpack.js', '.web.js', '.coffee', '.js', '.scss']
    modulesDirectories: ['src', 'src/js', 'web_modules', 'bower_components', 'node_modules']

  plugins: []
