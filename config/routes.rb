Rails.application.routes.draw do
  get 'search', to: 'search#index'
  get 'free_games/free_games'
  #get 'free_game/free_games'
  resources :fake_games
  resources :games
  resources :free_games
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'games#index'
  get 'game_sales', to: 'games#game_sales'
  get 'faker_games', to: 'fake_games#faker_games'
  get 'free_games', to: 'free_games#free_games'
  get 'free_games/:id', to: 'free_games#show'
  # Defines the root path route ("/")
  # root "articles#index"
end
