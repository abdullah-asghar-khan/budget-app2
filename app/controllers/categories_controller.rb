class CategoriesController < ApplicationController
  def index
    @user = current_user
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user
    if @category.save
      redirect_to user_categories_path, notice: 'Category was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end
end
