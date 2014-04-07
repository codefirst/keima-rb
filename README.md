# Keima Ruby API

[![Gem Version](https://badge.fury.io/rb/keima.svg)](http://badge.fury.io/rb/keima)
[![wercker status](https://app.wercker.com/status/0baa2e648395968f840ab08abaa6c4ae/s/ "wercker status")](https://app.wercker.com/project/bykey/0baa2e648395968f840ab08abaa6c4ae)

## Installation

Add this line to your application's Gemfile:

    gem 'keima'

Or install it yourself as:

    $ gem install keima

## Usage

    require 'rubygems'
    require 'keima'
    
    client = Keima::Client.new("keima base url", "api key")
    client.publish("channel name", "event name", {:message => "test"})

## Build

    $ bundle exec rake build

## Test

    $ bundle exec rspec

## License

See LICENSE file
