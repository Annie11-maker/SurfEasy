Rails.application.routes.draw do
  get 'pages/index'
  # get 'bookings/index'
  # get 'bookings/show'
  # get 'bookings/create'
  # get 'bookings/new'
  # get 'bookings/destroy'
  # get 'surfboards/index'
  # get 'surfboards/show'
  # get 'surfboards/edit'
  # get 'surfboards/create'
  # get 'surfboards/new'
  # get 'surfboards/update'
  # get 'surfboards/destroy'
  devise_for :users
  root to: "pages#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :surfboards do
    resources :bookings, only: [:create, :index, :new, :show]
  end
  resources :bookings, only: [:destroy]

end
