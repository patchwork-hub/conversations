# frozen_string_literal: true

module Conversations
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
