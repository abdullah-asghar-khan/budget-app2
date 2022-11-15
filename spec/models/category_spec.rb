# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user = User.create!(name: 'John', email: 'john@gmail.com', password: '123456', confirmed_at: Time.now)
    @category = Category.create(name: 'Rent', icon: 'fas fa-home', user_id: @user.id)
    @expense1 = @user.expenses.create(name: 'Rent', amount: 1000)
    @expense2 = @user.expenses.create(name: 'Groceries', amount: 500)
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(@category).to be_valid
    end

    it 'is not valid without a name' do
      @category.name = nil
      expect(@category).to_not be_valid
    end

    it 'is not valid without an icon' do
      @category.icon = nil
      expect(@category).to_not be_valid
    end

    it 'is not valid without a user' do
      @category.user_id = nil
      expect(@category).to_not be_valid
    end
  end

  # validate associations
  describe 'Categories Associations' do
    it 'Should have many expenses' do
      assc = Category.reflect_on_association(:expenses)
      expect(assc.macro).to eq :has_many
    end
    it 'Should have many expense categories' do
      assc = Category.reflect_on_association(:expense_categories)
      expect(assc.macro).to eq :has_many
    end
    it 'Should belong to User' do
      assc = Category.reflect_on_association(:user)
      expect(assc.macro).to eq(:belongs_to)
    end
  end

  after(:all) do
    User.destroy_all
    Category.destroy_all
  end
end
