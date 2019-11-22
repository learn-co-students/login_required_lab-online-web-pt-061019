class SecretsController < ApplicationController
  before_action :current_user

  # def show
  #   if current_user == nil
  #     redirect_to '/login'
  #   else
  #   end
  #   # if !current_user
  #   #   redirect_to '/login'
  #   # else
  #   #   redirect_to controller: 'sessions', action: 'new'
  #   # end
  # end

  def index
    if session[:name]
      render :index
    else
      redirect_to login_path
    end

  end

  def show
    if session[:name]
      render :show
    else
      redirect_to login_path
    end
  end
end
