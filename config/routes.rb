Rails.application.routes.draw do
  
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/member-data', to: 'members#show'
  devise_for :users, defaults: { format: :json }, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  namespace :api do
    namespace :v1 do
      # /api/v1/<route> URLs
      get 'dashboard/index'
      resources :users, :as => 'user'
      resources :profiles
    end
  end
end
