Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :arts, except: [:new, :edit]
      resources :spaces, except: [:new, :edit]
      resources :users, except: [:new, :edit]
    end
  end
end