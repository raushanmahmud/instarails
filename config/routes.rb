Rails.application.routes.draw do
	match "/contact", to: "pages#contact", via: :get
	get "/about", to: "pages#about"
	get "/users", to: "users#index"
	root "pages#index"
	get '/signup' => 'users#new'

	get '/login' => 'sessions#new'
  	post '/login' => 'sessions#create'
  	get '/logout' => 'sessions#destroy'


	resources :users
end
