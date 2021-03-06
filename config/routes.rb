Rails.application.routes.draw do
  devise_for :users
  resources :shots do
  	resources :comments
  	member do
  		put 'like', to: "shots#like"
  		put 'unlike', to: "shots#unlike"
  	end
  end

  devise_for :users, controllers: { registrations: 'registrations' }

  root 'shots#index'
end
