Rails.application.routes.draw do
  get 'home/index'
  
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :users

  resources :books do
  	member do
  		post 'borrow'
  		post 'return'
  	end
  end

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
