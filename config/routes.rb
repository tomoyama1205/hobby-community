Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
  resource :groups, only: [:show]
  resources :users, only: [:show, :edit, :update]
end
