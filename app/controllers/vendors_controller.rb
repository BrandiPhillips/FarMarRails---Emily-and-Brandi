class VendorsController < ApplicationController
  # before_action :get_id
  # before_action :get_authorization, only: [:destroy, :edit, :new]

  # def get_id
  #   @user = params[:user_type][:id]
  # end

  # def get_auth
  #   if current_user.id != @vendors.market_id
  #     flash [:notice] "You are not authorized to access this information"
  #   end
  # end

  def index
  end

  def show
    @market = Market.find(current_user.id)
  end

  def new
    @market_vendor = Vendor.new
  end

  def create
    @params = params
    @market_vendor = Vendor.new
    @market_vendor.name = params['vendor']['name']
    @market_vendor.num_employees = params['vendor']['num_employees']
    @market_vendor.market_id = params['vendor']['market_id']
    @market_vendor.save
    redirect_to vendors_show_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
