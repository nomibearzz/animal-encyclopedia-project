Rails.application.routes.draw do
  resources :adopts
  resources :charges
  get 'sessions/new'
  resources :save_animals
  resources :animals
  resource :favorite_animals, only: [:new, :create, :destroy]
  resources :users, only: [:show, :new,:create, :destroy, :index]
  resources :comments, only: :create
  resources :sessions, only: [:new,:create]
  delete '/sessions', to: 'sessions#destroy', as: "log_out"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
