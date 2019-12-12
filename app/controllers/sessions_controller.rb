class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to "/login"
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        if session[:name].nil?
          session[:name]
        else
          session.delete :name 
        end
    end
end