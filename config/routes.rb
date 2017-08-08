Rails.application.routes.draw do

  devise_for :users

  resources :tools, only: [:index, :show]

  root to: 'pages#home'
end
