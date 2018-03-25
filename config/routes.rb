Rails.application.routes.draw do
  namespace :api do
    post '/login', to: 'sessions#create'
    resources :users, only: [:index]
  end
end
