class SecretsController < ApplicationController
    before_action :require_login

    def show
    end

    def require_login
        if current_user 
            render "/welcome"
        else
            current_user == nil
            redirect_to "/sessions/new"
        end
    end
end