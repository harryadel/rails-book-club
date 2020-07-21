class User < ApplicationRecord
  has_many :comments
  has_many :posts
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password_confirmation, presence: true
end
