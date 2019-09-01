    
class HomeController < ApplicationController
    def index
        user = params[:user]
        if params[:id]
            @user = User.find_or_create_by(id:params[:id])
       
        elsif params[:user]  && params[:user].key?(:login)
            first_name = params[:user][:first_name]
            login = params[:user][:login]
            @user = User.find_or_create_by(login:login,first_name:first_name)
        elsif params[:user] && user
            @user = User.find_or_create_by(id:params[:user])    
        end           
    end
  end