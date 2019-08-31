class User < ActiveRecord::Base
  
  has_many :clock_events

end