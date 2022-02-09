class User < ApplicationRecord
  has_many :likes, dependent: :nullify

  validates :email, presence: true

  has_secure_password
end
