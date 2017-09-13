Rails.application.routes.draw do

  resources :citations

  resources :citations do
  	resources :authors
	end

  root to: 'cv#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
