Rails.application.routes.draw do

  devise_for :users

  resources :tools, only: :index

  root to: 'pages#home'
end
