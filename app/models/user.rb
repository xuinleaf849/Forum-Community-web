class User < ApplicationRecord
  has_secure_password

  validates :username, uniqueness: true
  validates :email, :password, :username, presence: true

  has_many :discussions
  has_many :comments
  has_many :topics, through: :discussions

end
