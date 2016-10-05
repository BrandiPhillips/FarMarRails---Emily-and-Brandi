class UsersController < ApplicationController
  def index
    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
    puts "Market: #{@market}"
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
