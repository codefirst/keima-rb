# Keima Ruby API

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
