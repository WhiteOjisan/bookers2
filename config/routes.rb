Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'about' => 'homes#about'
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show]
end
