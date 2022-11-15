# frozen_string_literal: true

require 'date'

class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show destroy]

  def index
    @user = current_user
    @categories = @user.categories.order('created_at DESC')
    @expenses = @user.expenses
  end

  def show
    @expenses = @category.expenses.order('created_at DESC')
  end

  def new
    @category = Category.new
  end

  def create
    puts category_params
    @category = Category.new(category_params)
    @category.user_id = current_user.id
    if @category.save
      redirect_to user_categories_path
      flash[:notice] = 'Category was successfully created.'
    else
      flash[:alert] = 'Category was not created.'
      render :new
    end
  end

  def destroy; end

  private

  def category_params
    params.require(:category).permit!
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
