Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  resources :tags
  resources :formats
  resources :videos
  resources :ideas
  resources :votes

  get 'ideas/index/:id', to: 'ideas#index', via: :get

  resources :videos

  root 'ideas#index'
end
