Rails.application.routes.draw do
  root :to => "courses#index"
  resources :professors
  resources :reviews
  resources :bookmarks
  resources :courses
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
