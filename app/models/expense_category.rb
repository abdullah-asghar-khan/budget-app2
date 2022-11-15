# frozen_string_literal: true

class ExpenseCategory < ApplicationRecord
  belongs_to :expense
  belongs_to :category

  validates :expense_id, uniqueness: { scope: :category_id }
  validates :expense_id, :category_id, presence: true
end
