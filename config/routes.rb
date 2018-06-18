Rails.application.routes.draw do
	get "/contact", to: "pages#contact"
	get "/about", to: "pages#about"
	root "pages#index"
<<<<<<< HEAD

	resources :users
=======
	resources :users

>>>>>>> upstream1/master
end
