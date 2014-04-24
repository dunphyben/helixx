Rails.application.routes.draw do
  devise_for :users
  resources :tags
end
