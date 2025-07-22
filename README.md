# Algoruby

Algoruby is a Ruby gem providing ready-to-use, production-friendly algorithmic patterns, including classics like Two Sum, K-Sum, Sliding Window, Binary Search, and more — all wrapped in clean Ruby interfaces.
run `bin/console`

Features

    * Array & Hashing Patterns: Two Sum, Two Sum Closest, Group Anagrams.

    * Sliding Window: Rolling sums, maximums, substring problems.

    * Binary Search: Works with numbers, strings, times, and custom objects.

    * Dynamic Programming: Maximum Subarray (Kadane's Algorithm).

    * Generalized Solutions: K-Sum, Exclude Aggregator, and more.

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

## Usage

require "algoruby"

Examples:

Algoruby::GroupAnagrams.call(["bebop", "bobep", "pebop", "epbop", "opbeb", "peobe"])
=> [["bebop", "bobep", "opbeb"], ["pebop", "epbop"], ["peobe"]]

Algoruby::BinarySearch.call(["Trane", "Bird", "Dizz", "Bud", "Monk" ], "Dizz")
=> 2

Algoruby::SlidingWindow.each_window([1, 2, 3, 4, 5], 3)
=> [[1, 2, 3], [2, 3, 4], [3, 4, 5]]

Algoruby::SlidingWindow.aggregate([1, 2, 3, 4, 5], 3) { |w| w.sum }
=> [6, 9, 12]

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/amitleshed/algoruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/amitleshed/algoruby/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Algoruby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/algoruby/blob/main/CODE_OF_CONDUCT.md).
