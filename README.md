Frontend StarterKit is a barebones framework with [gulp](http://gulpjs.com/) and [webpack](http://webpack.github.io/) fully configured for rapid development.

Webpack runs webpack-dev-server in development for on-the-fly compilation of source file changes. It can also compile assets for production. 

CoffeeScript, SCSS, Zurb Foundation, and Bower are installed and configured.

By default, CSS files are included by requiring them in JavaScript files via webpack magic. This reduces network latency and allows webpack to intelligently manage which files are actually required. See [src/js/head.coffee](https://github.com/starterkits/frontend-starterkit/blob/master/src/js/head.coffee).


# Install

```bash
git clone https://github.com/airships/tracker.git && cd tracker
npm install -g webpack-dev-server bower
npm install
```

# Development

```bash
# Run webpack-dev-server
gulp

# Or manually run webpack if needed
webpack -d --colors
```

# Production

```bash
# Compile assets for production
gulp build
```
