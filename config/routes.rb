Rails.application.routes.draw do
  
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      get 'dashboard/index'
      resources :users, :as => 'user'
      resources :profiles
    end
  end
end
