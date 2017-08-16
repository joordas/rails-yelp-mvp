Rails.application.routes.draw do
  get 'reviews/create'

  get 'reviews/new'

  root 'restaurants#index'
  resources :restaurants do
     resources :reviews, only: [:create, :new]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
