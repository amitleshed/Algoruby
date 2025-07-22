# frozen_string_literal: true

require_relative "lib/algoruby/version"

Gem::Specification.new do |spec|
  spec.name    = "algoruby"
  spec.version = Algoruby::VERSION
  spec.authors = ["Amit Leshed"]
  spec.email   = ["amitleshed@icloud.com"]

  spec.summary     = "Algoruby is a Ruby gem providing ready-to-use, production-friendly algorithmic patterns, including classics like Two Sum, K-Sum, Sliding Window, Binary Search, and more — all wrapped in clean Ruby interfaces."
  spec.description = `
        * Array & Hashing Patterns: Two Sum, Two Sum Closest, Group Anagrams.

        * Sliding Window: Rolling sums, maximums, substring problems.

        * Binary Search: Works with numbers, strings, times, and custom objects.

        * Dynamic Programming: Maximum Subarray.

        * Generalized Solutions: K-Sum, Exclude Aggregator, and more.
  `

  spec.homepage    = "https://github.com/amitleshed/Algoruby"
  spec.license     = "MIT"
  spec.required_ruby_version = ">= 3.2.0"
  spec.add_development_dependency "debug"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ Gemfile .gitignore test/ .github/])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
