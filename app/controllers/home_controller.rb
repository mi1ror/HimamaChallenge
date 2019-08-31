    
class HomeController < ApplicationController
    def index
        first_name = params[:user][:first_name]
        login = params[:user][:login]
        @user = User.find_or_create_by(login:login,first_name:first_name)
    end
  end