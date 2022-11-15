class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
  end

  def create
    @user = current_user
    @expense = @user.expenses.new(expense_params)
    if @expense.save
      @expense.expense_categories.create(category_id_func)
      flash[:notice] = 'Expense created successfully'
      redirect_to user_categories_path(current_user)
    else
      flash[:alert] = 'Expense not created'
      render 'new'
    end
  end

  def destroy; end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount)
  end

  def category_id_func
    params.require(:expense).permit(:category_id)
  end
end
