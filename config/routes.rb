Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :games, only: [:index, :show, :new, :create, :destroy] do
    resources :game_players do
      member do
        patch :accept
      end
    end
    resources :animals, only: [:index, :show] do
      resources :spotted_animals, only: [:create, :destroy]
    end
  end

  resources :parks, only: [:index, :show] do
    resources :park_animals, only: [:index, :show]
  end

  resources :animals, only: [:index, :show]

  root to: "pages#landing"

  get '/play', to: 'pages#play'
  get '/rules', to: 'pages#rules'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
