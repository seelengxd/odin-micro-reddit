class User < ApplicationRecord
  validates :username, presence: true, length: { in: 6..20 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  has_many :posts
  has_many :comments
end
