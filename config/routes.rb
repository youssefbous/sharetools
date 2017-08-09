Rails.application.routes.draw do

  devise_for :users

  resources :tools, only: [:index, :show, :new, :create, :edit, :update]

  root to: 'pages#home'
end
