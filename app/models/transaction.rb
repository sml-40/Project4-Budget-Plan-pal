class Transaction < ApplicationRecord
  # The  constant is used to populate the category dropdown in the form.

  belongs_to :user

  validates :amount, presence: true
  validates :category, presence: true
  validates :title, presence: true
end
