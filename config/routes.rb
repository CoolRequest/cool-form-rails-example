Rails.application.routes.draw do
  root to: 'application#home'
  resources :posts
  resources :users
end
