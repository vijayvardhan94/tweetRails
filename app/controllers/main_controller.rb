class MainController < ApplicationController
    def index
        #flash message
        #flash.now[:notice] = "Logged in successfully"
        #flash.now[:alert] = "Invalid email or account"
        #print them out in the views so that the user can see them
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end
    end
end