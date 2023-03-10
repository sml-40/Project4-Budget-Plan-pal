class Transaction < ApplicationRecord
  # The CATEGORIES constant is used to populate the category dropdown in the form.
  CATEGORIES = [ 
    { name: "Groceries", img: "Logo50.png" },
    { name: "Transportation", icon: "fa-solid fa-bus" },
    { name: "Travel", icon: "fa-duotone fa-plane-departure" },
    { name: "Food", icon: "fa-regular fa-utensils" },
    { name: "Entertainment", icon: "fa-regular fa-masks-theater" },
    { name: "Housing", icon: "fa-duotone fa-house" },
    { name: "Utilities", icon: "fa-duotone fa-lightbulb" },
    { name: "Personal Care", icon: "fa-duotone fa-bags-shopping" },
    { name: "Education", icon: "fa-sharp fa-solid fa-graduation-cap" },
    { name: "Health/fitness", icon: "fa-duotone fa-heart-pulse" },
    { name: "Miscellaneous", icon: "fa-duotone fa-circle-question" }
  ]

  belongs_to :user

  validates :amount, presence: true
  validates :category, presence: true
  validates :title, presence: true
end
