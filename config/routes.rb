Rails.application.routes.draw do
  	get 'pages/admin'

	root to: 'users#new'

	get 'users/new' => 'users#new', as: :new_user
	post 'users' => 'users#create'
	
	# ----- add these lines here: -----
	
	# log in page with form:
	get '/login'     => 'sessions#new'
	
	# create (post) action for when log in form is submitted:
	post '/login'    => 'sessions#create'
	
	# delete action to log out:
	get '/logout' => 'sessions#destroy'  
  	
  	# ----- end of added lines -----
	
end