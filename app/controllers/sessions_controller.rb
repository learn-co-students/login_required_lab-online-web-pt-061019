class SessionsController < ApplicationController
  before_action :current_user

  def index
    # if session[:name] == nil
    #   redirect_to login_path
    # else
    #   render :index
    # end
  end

  def new

  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  # def create
  #   # session[:name] = params[:name]
  #   # if params[:name]
  #   #     if params[:name] == ""
  #   #        redirect_to login_path
  #   #     else
  #   #       session[:name] = params[:name]
  #   #       redirect_to root_path
  #   #     end
  #   #   else
  #   #     redirect_to login_path
  #   #   end
  # end

  def destroy
    session.delete :name
    redirect_to login_path
  end

  # def destroy
  #   session.delete :name
  # end


end
