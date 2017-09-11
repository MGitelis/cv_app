Rails.application.routes.draw do

  get 'cv' => 'cv#index'
  resources :citations

  resources :citations do
  	resources :authors
	end

  root to: 'cv#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
