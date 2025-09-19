# Conversations

A Rails engine that enhances Mastodon conversations with custom API endpoints and functionality for the Patchwork social network platform.

## Overview

The Conversations gem provides a custom Rails engine that extends Mastodon's conversation functionality. It adds specialized API endpoints and features designed for the Patchwork ecosystem, allowing for enhanced conversation management and interaction capabilities.

## Features

- Custom conversation API endpoints via `/api/v1/patchwork/conversations`
- `check_conversation` endpoint for verifying conversations between accounts
- Seamless integration with Mastodon and Patchwork platforms
- Rails 8.0 compatibility

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'conversations'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install conversations
```

## Usage

After installation, the gem automatically mounts its routes into your Rails application. The main API endpoint is available at:

```
GET/POST /api/v1/patchwork/conversations/check_conversation
```

### API Endpoints

#### Check Conversation
Endpoint: `/api/v1/patchwork/conversations/check_conversation`

This endpoint allows you to check conversations between accounts in the Patchwork network.

## Configuration

The gem includes an initializer template that can be generated:

```bash
rails generate conversations:install
```

This will create a configuration file at `config/initializers/conversations.rb` where you can customize the gem's behavior.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/patchwork-hub/conversations. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/patchwork-hub/conversations/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [AGPL-3.0 License](https://www.gnu.org/licenses/agpl-3.0.html).

## Code of Conduct

Everyone interacting in the Conversations project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/patchwork-hub/conversations/blob/main/CODE_OF_CONDUCT.md).
