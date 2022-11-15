# frozen_string_literal: true

class Expense < ApplicationRecord
  belongs_to :user
  has_many :expense_categories
  has_many :categories, through: :expense_categories

  validates :name, :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
