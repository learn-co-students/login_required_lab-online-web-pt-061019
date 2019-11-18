class SessionsController < ApplicationController

  def new
  end

  def create
    if
      params[:name].nil? or params[:name].empty?
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to '/home'
  end
  end

  def destroy
    session.delete :name
  end
end
