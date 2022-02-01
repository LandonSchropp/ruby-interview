# Ruby Interview Development Environment

This is my personal Ruby development environment for interview problems. It's configured to get
me coding as quickly as possible during an interview.

It uses several tools to make development easier:

* [Rspec](https://rspec.info/): Rspec is an awesome behavioral testing library.
* [Guard](https://github.com/guard/guard): Guard allows Rspec specs to be run automatically when
  files change.
* [Jest](https://github.com/rubocop/rubocop): Rubocop is a fantastic Ruby linter. I use the
  [rules](https://github.com/optimumenergyco/optimum-energy-rubocop) I wrote at Optimum Energy.

## Setup

In order to run the code for this project, you'll first need to have the correct version of Ruby
installed. You can see the version this project depends on in the [.ruby-version](.ruby-version)
file.

This project uses Bundler to manage dependencies, so you'll also need to install the projects gem
dependencies.

``` bash
bundle install
```

## Running the Code

This project includes several binstubs.

* `bin/rspec`: Run the project's test suite.
* `bin/guard`: Continuously run the test suite whenever files are updated.
* `bin/rubocop`: Run the project's linter.

Since it's common to be provided with an input file during interview problems, I've also added a
handy utility that will run the problem. It can be used like this:

``` bash
bin/problem <input-file>
```
