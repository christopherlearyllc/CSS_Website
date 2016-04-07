Rails.application.routes.draw do
  devise_for :users
  resources :health_histories

  root to: "health_histories#new"
end
