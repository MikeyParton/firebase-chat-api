Rails.application.routes.draw do
  namespace :api do
    post '/login', to: 'sessions#create'
    resources :users, only: [:index] do
      resources :bookings, only: [:index], controller: 'users/bookings'
      resources :conversatsions, only: [:index], controller: 'users/conversations'
    end
  end
end
