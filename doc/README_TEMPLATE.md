Project name
-

Third-party service badges (if available)
[![Code Climate](https://codeclimate.com/github/fs/rails-base-api.png)](https://codeclimate.com/github/fs/rails-base-api)
[![Semaphore](https://semaphoreapp.com/api/v1/projects/0e00006725dcea00b179fab81a1b1bdaf9a64816/106819/shields_badge.png)](https://semaphoreapp.com/fs/rails-base-api)

Project description.

Dependencies
-

Information about external dependencies (redis, mongo, postgres, etc) and how you can obtain them (via homebrew, apt-get or from ftp).

Information about ruby and rails versions.

- PostgreSQL 9.3.1
  - `brew install postgres`
- Ruby 2.1.0
  - `rbenv install 2.1.0`
- Rails 4

Quick Start
-

Clone this repo:

```
git clone git@github.com:account/repo.git
cd repo
```

Run setup script

```
bin/setup
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

Where is documentation and examples (e.g. `./docs`)?

Continuous Integration
-

CI service info and status (if available).
Add a link to a project page on [Semaphore](http://semaphoreapp.com).

Staging
-

Location and other info about staging servers.

Production
-

Location and other info about production servers.

Third-party services
-

Code Climate, etc

Workflow
-

Information about base branch, branch naming, commit messages, specs and pull requests. Check out our [guides](https://github.com/fs/guides/tree/master/development/maintain-existing-project/workflow).
