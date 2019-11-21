require 'pry'
class SecretsController < ApplicationController
    def show
        if current_user 
            render "/welcome"
        else
            current_user == nil || ""
            redirect_to "/sessions/new"
        end
    end
end