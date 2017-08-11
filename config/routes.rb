Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  resources :tools, except: [:destroy] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :show]

  root to: 'pages#home'
end
