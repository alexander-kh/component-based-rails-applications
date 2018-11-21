The project that is building by the book ["Component-Based Rails Applications: Large Domains Under Control"](http://www.informit.com/store/component-based-rails-applications-large-domains-under-9780134774589) by Stephan Hagemann, published by Addison-Wesley Professional

The app deployed to:
- Heroku: https://obscure-wave-95623.herokuapp.com
- Pivotal Web Services (Cloud Foundry): http://alex-sportsball.cfapps.io/

To run deploy_to_heroku.sh jsawk and js interpreter have to be installed.
For Mac OS X:
```
curl -L http://github.com/micha/jsawk/raw/master/jsawk > jsawk
chmod 755 jsawk && mv jsawk /usr/local/bin
```
```
brew install spidermonkey
```