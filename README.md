# TelegraphApi

This gem wraps Telegraph API for convenient usage with Ruby  

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'telegraph_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install telegraph_api

## Usage

```ruby
require 'telegraph_api'

page = Telegraph::Page.get(path: 'Sample-Page-12-15')
```

Gem provides two namespaces for common usage:

`Telegraph::Page` for page methods and `Telegraph::Account` for account manipulation

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/deff7/ruby_telegraph_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

