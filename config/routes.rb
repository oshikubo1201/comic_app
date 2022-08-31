Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, only: [:new, :create, :show, :edit, :update] do
    resources :comments, only: [:create]
    resources :reviews, only: [:index, :create]

  end
  resources :users, only: [:show]

end
