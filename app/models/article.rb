# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :comments, inverse_of: :article
  validates :title, :content, presence: true
end
