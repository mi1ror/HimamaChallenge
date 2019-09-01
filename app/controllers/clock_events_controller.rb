class ClockEventsController < ApplicationController
  
    def show
       @user = User.find_or_create_by(id:params[:id])
        if !@clocked_events
            @clocked_events  = ClockEvent.where(user_id: params[:id])
           
        end
    end
  
    def new
      first_name = params[:clock_events][:first_name]
      login = params[:clock_events][:login]
      clocktype = params[:clock_events][:clock_event]
  
      @user = User.find_or_create_by(login:login,first_name:first_name)
      ClockEvent.create({user:@user,clocktype:clocktype, time:DateTime.now})
  
      @clocked_events = @user.clock_events
  
    end

  end