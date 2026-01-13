# Conversations

A Rails engine that enhances Mastodon conversations with custom API endpoints for the Patchwork social network platform.

This gem extends Mastodon's conversation functionality by providing specialized API endpoints for conversation management. It integrates seamlessly with the Patchwork ecosystem, offering features like conversation checking between accounts and bulk read status management.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'conversations', git: 'https://github.com/patchwork-hub/conversations.git'
```

And then execute:

```bash
bundle install
```

Run the installation generator:

```bash
rails generate conversations:install
```

## Features

### Conversation Management
- **Check Conversation**: Verify if a conversation exists between the current user and a target account
- **Mark All as Read**: Bulk operation to mark all unread conversations as read for the current account

### Rails Engine Integration
- **Isolated Namespace**: Clean separation from host application using `Conversations` namespace
- **Auto-mounting Routes**: Automatically prepends engine routes to host application
- **Migration Support**: Seamlessly appends database migrations to host application's migration path

### Developer Experience
- **Service Autoloading**: Automatic loading of service objects from `app/services`
- **Worker Autoloading**: Automatic loading of background workers from `app/workers`
- **Installation Generator**: Quick setup with initializer and migration support

## API Endpoints

### Patchwork Conversations
```
GET  /api/v1/patchwork/conversations/check_conversation  # Check conversation with target account
POST /api/v1/patchwork/conversations/read_all            # Mark all conversations as read
```

#### Check Conversation
Returns the conversation with a specified target account if one exists.

**Parameters:**
- `target_account_id` (required) - The ID of the account to check conversation with

**Scopes Required:** `read` or `read:statuses`

#### Read All
Marks all unread conversations for the current account as read.

**Response:**
- `success` - Boolean indicating operation success
- `updated_count` - Number of conversations marked as read
- `message` - Human-readable result message

**Scopes Required:** `write` or `write:conversations`

## Configuration

The gem creates an initializer at `config/initializers/prepend_conversations.rb` where you can add custom configuration using `Rails.application.config.to_prepare`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/patchwork-hub/conversations. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/patchwork-hub/conversations/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [AGPL-3.0 License](https://opensource.org/licenses/AGPL-3.0).

## Code of Conduct

Everyone interacting in the Conversations project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/patchwork-hub/conversations/blob/main/CODE_OF_CONDUCT.md).
