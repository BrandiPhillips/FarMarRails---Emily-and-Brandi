class UsersController < ApplicationController
  def index
    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
    puts "Market: #{@market}"

    # user, market, vendor
    #if user > search_market
    # if market, redirect to MarketsController/index
    #if vendor, redirect to vendorcontroller/index
  end

  def show
    #market attribute list with vendors

  end

  def create

  end

  def search_market
      #show market list dropdown
  end


end
