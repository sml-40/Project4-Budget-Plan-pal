class Transaction < ApplicationRecord
  CATEGORIES = ["Groceries", "Travel", "Food", "Entertainment", "Housing", "Utilities" "Transportation", "Personal Care", "Education", "Health/fitness", "Miscellaneous"]
  belongs_to :user

  validates :amount, presence: true
end
