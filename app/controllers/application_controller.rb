class ApplicationController < ActionController::Base
    helper_method  :current_user
    
    def index
        
        redirect_to '/users/new'
    end

    def signIn
        
        redirect_to '/home/index'
    end

    def current_user

        if defined?(@user)
            return @user
        end
        
       
       
    end

 
      
end
