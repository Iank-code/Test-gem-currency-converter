# TestGem

TestGem is a lightweight currency conversion utility with a small set of built-in rates. It provides a simple API for converting amounts between supported currencies.

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add it to the application's Gemfile by executing:

```bash
bundle add test_gem
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install test_gem
```

## Usage

Convert between supported currencies using `TestGem.convert`:

```ruby
require "test_gem"

TestGem.convert(100, from: "USD", to: "EUR")
# => 108.53
```

List supported currency codes:

```ruby
TestGem.available_currencies
# => ["EUR", "GBP", "INR", "JPY", "USD"]
```

If an unsupported currency is provided, `TestGem::UnsupportedCurrencyError` is raised.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Iank-code/test_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Iank-code/test_gem/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TestGem project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Iank-code/test_gem/blob/main/CODE_OF_CONDUCT.md).
# Test-gem-currency-converter
