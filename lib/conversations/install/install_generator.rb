# frozen_string_literal: true

module Conversations
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    
    def copy_initializer_file
      copy_file "conversation_initializer.rb", Rails.root + "config/initializers/prepend_conversations.rb"
    end
    
    def rake_db
      rake("conversations:install:migrations")
      rake("db:migrate")
    end
    
  end
end