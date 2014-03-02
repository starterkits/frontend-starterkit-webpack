Airship Tracker is a personal data mobile app.

Tracker makes it easy to manually enter and analyze quantified self logs: food, habits, mood, exercise, etc.
The project was started to meet a personal need. Other quantified self apps focus too much on diet, exercise,
or automatic integration with tracking devices. None of the apps offered a simple interface for quickly
capturing any event for later analysis.

Build with HTML5, PhoneGap, and PouchDB.

# Install

```bash
git clone https://github.com/airships/tracker.git && cd tracker
npm install
npm install -g webpack-dev-server bower
bower install
```

# Development

```bash
# Run the development server
webpack-dev-server -d --colors
```

# TODO

* Setup Phonegap
* Use [web workers](https://github.com/webpack/webpack/tree/master/examples/web-worker)
* Use [i18n](https://github.com/webpack/webpack/tree/master/examples/i18n)

