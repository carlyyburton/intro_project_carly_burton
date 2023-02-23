Rails.application.routes.draw do
  resources :fake_games
  resources :games
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'games#index'
  get 'game_sales', to: 'games#game_sales'
  # Defines the root path route ("/")
  # root "articles#index"
end
