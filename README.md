# Algoruby

Algoruby is a must-have toolbelt for tackling day-to-day Ruby on Rails scenarios with minimum stress and maximum performance. It provides ready-to-use, production-grade algorithmic patterns — including Two Sum, K-Sum, Sliding Window, Binary Search, and more — all designed to simplify complex tasks and boost developer productivity.
run `bin/console` to experiment.

Features

    * Array & Hashing Patterns: Two Sum, Two Sum Closest, Group Anagrams.

    * Sliding Window: Rolling sums, maximums, substring problems.

    * Binary Search: Works with numbers, strings, times, and custom objects.

    * Dynamic Programming: Maximum Subarray (Kadane's Algorithm).

    * Generalized Solutions: K-Sum, Exclude Aggregator, and more.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add 'algoruby'
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install 'algoruby'
```

## Usage

```bash
require "algoruby"
```

Examples:

## **Binary Search**
```bash
Binary Search

Algoruby::BinarySearch.call(["Trane", "Bird", "Dizz", "Bud", "Monk" ], "Dizz")
#=> 2




arr = [1, 3, 5, 7, 9]

Algoruby::BinarySearch.first_greater(arr, 5)
# => 3 (arr[3] == 7)

Algoruby::BinarySearch.last_less_or_equal(arr, 5)
# => 2 (arr[2] == 5)
```

## **Anagrams**
```bash
events  = [:create, :notify, :update, :foo, :bar, :update, :create, :notify]
pattern = [:create, :update, :notify]

Algoruby::AnagramScan.indices(events, pattern)
# => [0, 5]



haystack = %w[A b C a B c]
needle   = %w[a b c]

Algoruby::AnagramScan.indices(haystack, needle, key: ->(ch) { ch.downcase })
# => [0, 1, 2, 3]

```

## **Sliding Window**
```bash
people = [{ age: 30 }, { age: 25 }, { age: 33 }, { age: 29 }]

Algoruby::SlidingWindow.max(people, 2, by: ->(p) { p[:age] })
# => [{ age: 30 }, { age: 33 }, { age: 33 }]



people = [{ age: 30 }, { age: 25 }, { age: 33 }, { age: 29 }]

Algoruby::SlidingWindow.min(people, 2, by: ->(p) { p[:age] })
# => [{ age: 25 }, { age: 25 }, { age: 29 }]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/amitleshed/algoruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/amitleshed/algoruby/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Algoruby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/amitleshed/algoruby/blob/main/CODE_OF_CONDUCT.md).
