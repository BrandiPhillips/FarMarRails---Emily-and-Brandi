class SessionsController < ApplicationController
  def index
    case :user_type
      when 'user'
        redirect_to users_search_path
      when 'market'
        redirect_to create_session_path
      when 'vendor'
        redirect_to create_session_path
    end
  end

  def new
  end

  def create
    user = {type: params[:session][:type], id: params[:session][:id]}
    log_in (user)
    if params[:session][:type].downcase == "market"
      redirect_to markets_index_path
    elsif params[:session][:type].downcase == "vendor"
      redirect_to vendors_index_path
    else
      redirect_to users_index_path
    end
  end

  def destroy
  end
end
