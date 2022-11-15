require 'rails_helper'

RSpec.describe Expense, type: :model do
  before(:all) do
    @user = User.create(name: 'John', email: 'john@gmail.com', password: '123456', confirmed_at: Time.now)
    @expense = @user.expenses.create(name: 'Rent', amount: 1000)
  end

  it 'is valid with valid attributes' do
    expect(@expense).to be_valid
  end

  it 'is not valid without a name' do
    @expense.name = nil
    expect(@expense).to_not be_valid
  end

  it 'is not valid without an amount' do
    @expense.amount = nil
    expect(@expense).to_not be_valid
  end

  it 'is not valid without a user' do
    @expense.user_id = nil
    expect(@expense).to_not be_valid
  end

  it 'is not valid with a negative amount' do
    @expense.amount = -1
    expect(@expense).to_not be_valid
  end

  it 'is not valid with a zero amount' do
    @expense.amount = 0
    expect(@expense).to_not be_valid
  end

  # validate associations
  describe 'Expense Associations' do
    it 'It should have many expense_categories' do
      assc = Expense.reflect_on_association(:expense_categories)
      expect(assc.macro).to eq(:has_many)
    end
    it 'It should have many categories through expense_categories' do
      assc = Expense.reflect_on_association(:categories)
      expect(assc.macro).to eq(:has_many)
    end
    it 'should belong to user' do
      assc = Expense.reflect_on_association(:user)
      expect(assc.macro).to eq(:belongs_to)
    end
  end

  after(:all) do
    User.destroy_all
    Expense.destroy_all
  end
end
