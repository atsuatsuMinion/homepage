Rails.application.routes.draw do
  devise_for :users
  resources :matches, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :members, only: [:new, :create, :index, :edit, :update, :destroy]
  root to: "homes#top"
  get 'homes/top'
  get 'homes/team'
  get 'homes/inquiry'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
