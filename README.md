# Heremaps

This `ruby gem` provide the functionality to integrate with HERE Maps API, as described below.

APIs Currently Integrated

- SEARCH (PLACES) AND GEOCODING APIs
- ROUTING APIs

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heremaps'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heremaps

## Usage

To initialize the Heremaps library, you must generate the Heremaps APP ID and APP CODE. And set it as shown below

> Heremaps.app_id = "<app_id>"
> Heremaps.app_code = "<app_code>"

### Calling Heremap API

To use Heremaps under `spec` folder, please refer to RSpec. Following is an example to invoke geocoder API.

> require "heremaps"
>options = { :searchtext => "425 W Randolph Street, Chicago", :gen => 9 }
>res = Heremaps::Geocoder::Geocode.new.get options

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/heremaps. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Heremaps project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/heremaps/blob/master/CODE_OF_CONDUCT.md).
