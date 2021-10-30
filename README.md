# HTTParty Automated Tests Template

[![CI](https://github.com/juniorschmitz/httparty-simple-template/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/juniorschmitz/httparty-simple-template/actions/workflows/main.yml)

A simple template created for implementing automated tests focusing on API using HTTParty as the REST client.

For running the Rubocop linter:
```
rubocop
```

For running the Rubocop linter and auto-fixing issues:
```
rubocop -A
```

For running the project locally, one should have Ruby 2.7.x+ version installed, and run the commands:
```
bundle install
bundle exec cucumber -p default
```

The documentation for the tested API can be found at: https://serverest.dev

The framework uses:
```
- Rspec;
- Cucumber;
- HTTParty;
- Faker;
```

It uses exclusive send methods from Ruby for reusing steps with more powerful implementation, and has methods already implemented as examples for the ServeRest API.

Some of the main capabilities of the framework are:
- Generic and Dynamic data generation using Faker for the automated tests;
- Utilities for logging the infos from and to applications;
- Easy to use Features/Steps/Hooks for implementing new scenarios or migrating and creating new tests for any kind of REST APIs;
- Contract tests using Json Schema validators;

As examples on implementation, in the project there are:
- 23 scenarios covering the /usuarios endpoint;
- 3 scenarios covering the /login endpoint;
- 1 scenario covering the /products endpoint;

Enjoy, any doubt, feel free to contact me.
