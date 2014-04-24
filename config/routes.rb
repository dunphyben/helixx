Rails.application.routes.draw do
  devise_for :users
  resources :tags
  resources :formats

  root 'ideas#index'
end
