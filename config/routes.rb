Rails.application.routes.draw do
  devise_for :users
  resources :health_histories

  root to: "pages#show", page: "home"

  get "/pages/:page" => "pages#show"
end
