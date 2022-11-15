class Expense < ApplicationRecord
  belongs_to :user
  has_many :expense_categories
  has_many :category, through: :expense_categories
end
