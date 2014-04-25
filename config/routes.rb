Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  resources :tags
  resources :formats
  resources :videos
  resources :ideas
  resources :votes
  resources :users, only: [:show]

  get 'ideas/index/:id', to: 'ideas#index', via: :get

  root 'ideas#index'
end
