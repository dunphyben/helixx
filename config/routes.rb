Rails.application.routes.draw do
  devise_for :users
  resources :tags
  resources :formats
  resources :videos
  resources :ideas

  get 'ideas/index/:id', to: 'ideas#index', via: :get

  resources :videos

  root 'ideas#index'
end
