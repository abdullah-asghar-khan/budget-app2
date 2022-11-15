# frozen_string_literal: true

class UserController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def new; end

  def create; end

  def destroy; end
end
