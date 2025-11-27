# frozen_string_literal: true

Conversations::Engine.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do

      namespace :patchwork do
        resources :conversations, only: [] do
          collection do
            get 'check_conversation'
            post 'read_all'
          end
        end
      end
      
    end
  end
end

