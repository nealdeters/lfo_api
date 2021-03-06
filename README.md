# LFO API GEM

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lfo_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lfo_api

## Usage

#### Getting API results
For all results, use the command:

    $ api = LfoApi::Client.new
    $ api.results

Search for customer score based on income:

    $ api.search("income","50000")

Search for customer score based on zipcode:

    $ api.search("zipcode","60201")

Search for customer score based on age:

    $ api.search("age","35")

Search for customer score based on propensity:

    $ api.search("propensity","0.26532")

Search for customer score based on ranking:

    $ api.search("ranking","C")

Search for customer score based on income, zipcode, and age:

    $ api.income_zipcode_age("50000","60201","35")

## Testing

To run the test suite, run `rake spec`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nealdeters/lfo_api.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
