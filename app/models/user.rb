class User < ApplicationRecord
  has_many :categories, dependent: :destroy

  has_secure_password

  def welcome
    "Hello, #{self.email}!"
  end
end
