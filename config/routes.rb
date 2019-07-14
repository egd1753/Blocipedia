Rails.application.routes.draw do

  get 'welcome/index'
  get 'welcome/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  devise_for :users

  resources :users, only: [:edit, :update]

  resources :wikis

  resources :collaborators

  resources :charges, only: [:new, :create]

end
