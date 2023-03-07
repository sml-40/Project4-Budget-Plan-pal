class Transaction < ApplicationRecord
  # The CATEGORIES constant is used to populate the category dropdown in the form.
  CATEGORIES = ["Groceries", "Travel", "Food", "Entertainment", "Housing", "Utilities", "Transportation", "Personal Care", "Education", "Health/fitness", "Miscellaneous"]
  belongs_to :user

  validates :amount, presence: true
end
