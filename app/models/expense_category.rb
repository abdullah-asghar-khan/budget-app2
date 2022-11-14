class ExpenseCategory < ApplicationRecord
  has_many :expenses, through: :expense_categories
  has_many :categories, through: :expense_categories
end
