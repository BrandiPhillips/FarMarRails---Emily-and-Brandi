class SessionsController < ApplicationController
  def index

  end

  def new
    @user = params[:user_type]
  end

  def create
    @user = params[:user_type]
    # user = {type: @user, id: params[:session][:id]}
    # log_in (user)
    if @user.downcase == "market"
      redirect_to markets_index_path
    elsif @user.downcase == "vendor"
      redirect_to vendors_index_path
    else
      redirect_to users_index_path
    end
  end

  def destroy
  end
end
