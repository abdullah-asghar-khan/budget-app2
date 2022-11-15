class User < ApplicationRecord
  has_many :expenses, dependent: :destroy
  has_many :categories, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, :email, presence: true
end
