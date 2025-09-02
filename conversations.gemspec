# frozen_string_literal: true

require_relative "lib/conversations/version"

Gem::Specification.new do |spec|
  spec.name = "conversations"
  spec.version = Conversations::VERSION
  spec.authors = ["Aung Kyaw Phyo"]
  spec.email = ["kiru.kiru28@gmail.com"]

  spec.summary = "Overrides conversations & mastodon build features"
  spec.description = "A custom gem to dynamically override the Mastodon conversations and build features, allowing for enhanced functionality and customization within the Mastodon ecosystem."
  spec.homepage = "https://www.joinpatchwork.org/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # gemspec = File.basename(__FILE__)
  # spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
  #   ls.readlines("\x0", chomp: true).reject do |f|
  #     (f == gemspec) ||
  #       f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
  #   end
  # end
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 8.0"
  spec.add_dependency "byebug", '~> 11.1'
  spec.add_dependency "annotaterb", '~> 4.13'

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
