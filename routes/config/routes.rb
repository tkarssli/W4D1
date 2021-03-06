Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :update, :destroy, :create] do
    resources :artworks, only: [:index]
  end
  resources :artworks, only: [:show, :update, :destroy, :create]
  resources :artwork_shares, only: [:destroy, :create]
  # get 'users', to: 'users#index'
  # post 'users', to: 'users#create'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # get 'users/:id', to: 'users#edit', as: 'edit_user'
  # get 'users/:id', to: 'users#show', as: 'user'
  # get 'users/:id', to: 'users#show', as: 'user'

  
end
