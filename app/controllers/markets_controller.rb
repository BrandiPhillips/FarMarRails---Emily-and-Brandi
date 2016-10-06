class MarketsController < ApplicationController
  #before_action :get_id

  def get_id
    @user = params[:user_type]
  end


  def index
    @user = session[:user_id]
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
