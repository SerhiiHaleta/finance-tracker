Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "my_portfolio", to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search', defaults: { format: 'js' }
  get 'my_friends', to: 'users#my_friends'
  get "search_friend", to: 'users#search', defaults: { format: 'js' }
  resources :friendships, only: [ :create, :destroy ]
  resources :users, only: [ :show ]

  # Defines the root path route ("/")
  root "welcome#index"
end
