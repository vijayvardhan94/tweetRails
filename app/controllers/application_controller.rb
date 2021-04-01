class ApplicationController < ActionController::Base
    before_action :set_current_user
    def set_current_user
        #flash message
        #flash.now[:notice] = "Logged in successfully"
        #flash.now[:alert] = "Invalid email or account"
        #print them out in the views so that the user can see them
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end
end
