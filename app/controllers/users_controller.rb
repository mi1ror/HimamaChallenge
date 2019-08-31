class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]
  
  def new
    @user = User.new
  end

  def user_params
    params.require(:user).permit(:login, :first_name)
  end

  def create
    first_name = user_params[:user][:first_name]
    login = user_params[:user][:login] 
    @user = User.find_or_create_by(login:login,first_name:first_name)
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_back_or_default account_url
    else
      #render :action => :new
    end
  end
  
  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end
  
  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end
end