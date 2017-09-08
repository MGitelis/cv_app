Rails.application.routes.draw do
  get 'authors/create'

  get 'authors/update'

  get 'authors/edit'

  get 'authors/destroy'

  get 'authors/index'

  get 'authors/show'

  get 'citations/new'

  get 'citations/create'

  get 'citations/update'

  get 'citations/edit'

  get 'citations/destroy'

  get 'citations/index'

  get 'citations/show'

  resources :citations

  root to: 'citations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
