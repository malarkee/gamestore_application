Rails.application.routes.draw do
  resources :played_games
  
  # only load pages for admin users
  authenticated :user, ->(user) {user.admin?} do
    get 'admin', to: 'admin#index'
    get 'admin/games'
    get 'admin/reviews'
    get 'admin/users'
    get 'admin/show_game'
  end

  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :games do
    resources :comments
  end

  resources :games do
    resources :reviews
  end

  get '/u/:username', to: 'users#profile', as: 'user'
  get 'about', to: 'pages#about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#home"
end
