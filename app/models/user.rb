class User < ApplicationRecord
  has_many :categories, dependent: :destroy

  has_secure_password

  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, length: { minimum: 6 }
  # validates :password_confirmation, presence: true, length: { minimum: 6 }
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :username, presence: true, uniqueness: true
  
end
