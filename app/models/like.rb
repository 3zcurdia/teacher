class Like < ApplicationRecord
  belongs_to :article
  belongs_to :user

  enum glyph: { like: "👍", love: "💜", angry: "😡", sad: "😥" }
end
