Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/arts', to: 'arts#create'
      resources :arts, except: [:new, :edit]
      resources :spaces, except: [:new, :edit]
      get 'users/current-user', to: 'currentusers#index'
      resources :users, except: [:new, :edit]
      resources :currentusers, except: [:new, :edit]
    end
  end
  post '/login', to: 'sessions#create'
end