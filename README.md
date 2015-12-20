
PDP-Angular-API
-
[![Build Status](https://semaphoreci.com/api/v1/projects/1340cec0-a534-49d9-a71b-b7999694765f/637822/badge.svg)](https://semaphoreci.com/NiyazSerazetdinov/pdp-angular-api)

Simple API that allows creating articles and comments for them.

Dependencies
-

Information about ruby and rails versions.

- PostgreSQL 9.3.1
  - `brew install postgres`
- Ruby 2.2.3
  - `rbenv install 2.2.3`
- Rails 4.2.4

Quick Start
-

Clone this repo:

```
git clone git@github.com:NiyazSerazetdinov/pdp-angular-api.git
cd repo
```

Run setup script

```
bin/setup
```

Run server script

```
bin/server
```

Initializers
-

* `01_config.rb` - shortcut for getting application config with `app_config`
* `mailer.rb` - setup default hosts for mailer from configuration
* `requires.rb` - automatically requires everything in lib/ & lib/extensions

Scripts
-

* `bin/setup` - setup required gems and migrate db if needed
* `bin/quality` - run brakeman and rails_best_practices for the app
* `bin/ci` - should be used in the CI to run specs

Documentation & Examples
-

Run server script `bin/server` and navigate to `http://localhost:5000/docs`


Continuous Integration
-

Project page on [Semaphore](http://semaphoreapp.com/NiyazSerazetdinov/pdp-angular-api).

Staging
-

 [Heroku](http://pdp-angular-api.herokuapp.com)
