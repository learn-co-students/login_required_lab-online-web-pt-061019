class SessionsController < ApplicationController
    def new
    end

    def create
        # current_user = params[:name]
        
        if params[:name] == nil || ""
            redirect_to "/"
        else
            session[:name] = params[:name]
            redirect_to "/welcome"
        end
    end
end