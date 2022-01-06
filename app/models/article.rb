# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :comments, inverse_of: :article, dependent: :destroy
  validates :title, :content, presence: true
end
