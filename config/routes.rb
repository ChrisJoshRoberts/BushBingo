Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :parks, only: [:index, :show] do
    resources :games, only: [:create]
    resources :park_animals, only: [:index, :show]
  end

  resources :games, only: [:index, :show, :new, :create, :destroy, :update] do
    resources :game_players

    resources :animals, only: [:index, :show] do
      resources :spotted_animals, only: [:create, :destroy]
    end

    resources :parks, only: [:index, :show] do
      resources :park_animals, only: [:index, :show]
    end
  end

  resources :animals, only: [:index, :show]

  root to: "pages#landing"

  get '/play', to: 'pages#play'
  get '/rules', to: 'pages#rules'

  post 'games/:id/accept-game', to: 'game_players#accept_game', as: 'accept_game'

  delete 'games/:id/decline-game', to: 'game_players#decline_game', as: 'decline_game'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
