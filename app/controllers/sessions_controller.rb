class SessionsController < ApplicationController 
  # before_action :require_login

  def new 
  end

  def create
    if params[:name].nil? || params[:name].blank?
      redirect_to '/login' 
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name if session[:name]
  end
  
  # private
  # def require_login
  #   return head(:forbidden) unless session.include? :name
  # end
end