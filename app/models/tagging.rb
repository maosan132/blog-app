# frozen_string_literal: true

class Tagging < ApplicationRecord
  belongs_to :tags
  belongs_to :articles
end
