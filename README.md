# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  ```3.1.4```
* System dependencies

* Configuration
```Rails 8.0.1```
* Database creation

* Database initialization

* How to run the test suite
  Testing is handled with RSpec, running test follows this pattern:
```  # Default: Run all spec files (i.e., those matching spec/**/*_spec.rb)
$ bundle exec rspec

# Run all spec files in a single directory (recursively)
$ bundle exec rspec spec/models

# Run a single spec file
$ bundle exec rspec spec/controllers/accounts_controller_spec.rb

# Run a single example from a spec file (by line number)
$ bundle exec rspec spec/controllers/accounts_controller_spec.rb:8

# See all options for running specs
$ bundle exec rspec --help`
```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Simplecov Test Coverage
  To see test coverage, after running the tests, run 
  ```open coverage/index.html```