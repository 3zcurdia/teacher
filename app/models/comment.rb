class Comment < ApplicationRecord
  belongs_to :article, inverse_of: :comments
  validates :content, presence: true
end
