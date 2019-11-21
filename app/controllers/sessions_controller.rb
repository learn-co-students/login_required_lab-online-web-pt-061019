class SessionsController < ApplicationController
    def new
    end

    def create
        if current_user.present?
            current_user = params[:name]
        else 
            current_user == nil
            redirect_to "/sessions/new"
        end
    end
end