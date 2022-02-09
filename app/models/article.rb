# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :comments, inverse_of: :article, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title, :content, presence: true

  def upsert_like(user, params)
    like = likes.find_or_initialize_by(user: user)
    like.glyph = params[:glyph]
    like.save
  end

  def liked_by?(user)
    likes.exists?(user: user)
  end
end
