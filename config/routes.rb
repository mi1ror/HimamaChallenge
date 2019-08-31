Rails.application.routes.draw do 

	resources :clock_events
	resources :users


	root "application#index" # optional, this just sets the root route
	get 'home/index'

	post '/users/new' => 'home#index'
	post 'home/index'
	post 'clock_events/new' 
	get 'clock_events/show'

end
