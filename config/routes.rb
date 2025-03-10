Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :surfboards do
    resources :bookings, only: [:create, :new]
    resources :reviews, only: [:create]
    resource :favorites, only: [:create]
  end

  resources :bookings, only: [:index, :show, :destroy] do
    member do
      put :accept # This adds a PUT route for the accept action
    end
  end

  resources :favorites, only: [:index, :destroy]
end
