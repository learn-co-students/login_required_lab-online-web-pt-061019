class SessionsController < ApplicationController

  def new

  end

  def create
    if session[:name]
      redirect_to '/'
    elsif params[:name] == ""
      redirect_to '/login'
    elsif params[:name] == nil
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if current_user
      session.delete :name
    end
  end

end
