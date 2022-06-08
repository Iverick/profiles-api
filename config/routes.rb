Rails.application.routes.draw do
  
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/member-data', to: 'members#show'

  namespace :api do
    namespace :v1 do
      # /api/v1/<route> URLs
      get 'dashboard/index'
      resources :users, :as => 'user'
      resources :profiles
      # /api/v1/auth/<route> URLs
      namespace :auth do
        devise_for :users, controllers: {
          sessions: 'users/sessions',
          registrations: 'users/registrations'
        }
      end
    end
  end
end
