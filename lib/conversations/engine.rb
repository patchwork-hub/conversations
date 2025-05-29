# frozen_string_literal: true

module Conversations
  class Engine < ::Rails::Engine
    isolate_namespace Conversations

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end

    initializer 'conversations.load_routes' do |app|
      app.routes.prepend do
        mount Conversations::Engine => "/", :as => :Conversations
      end
    end

    config.autoload_paths << File.expand_path("../app/services", __FILE__)
    config.autoload_paths << File.expand_path("../app/workers", __FILE__)

  end
end
