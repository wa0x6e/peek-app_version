# Peek::AppVersion

[![Code Climate](https://codeclimate.com/github/kamisama/peek-app_version/badges/gpa.svg)](https://codeclimate.com/github/kamisama/peek-app_version) [![Gem Version](https://badge.fury.io/rb/kamisama%2Fpeek-app_version.png)](http://badge.fury.io/rb/kamisama%2Fpeek-app_version) [![Inline docs](http://inch-ci.org/github/kamisama/peek-app_version.png?branch=master)](http://inch-ci.org/github/kamisama/peek-app_version)
 
Display your application version number.

This peek view will try to fetch you application version number if it exists, with

	Rails::VERSION

or if you have a custom app name,

	MyAppName::VERSION

If you didn't set a version, it'll try to build a version name with [`git-describe`](http://git-scm.com/docs/git-describe).

## Installation

Add this line to your application's Gemfile:

    gem 'peek-app_version'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install peek-app_version
    
## Requirements

* [Peek](https://github.com/peek/peek)
* Git, if your application don't have a version number

## Usage

Add the following to your `config/initializers/peek.rb`:

```ruby
Peek.into Peek::Views::AppVersion
```

If you're using a different application name than the default `Rails` for your application, you can set it like that

```ruby
Peek.into Peek::Views::AppVersion, app_name: MyAppName
```

## To-do

* Build version number from SCM other than git