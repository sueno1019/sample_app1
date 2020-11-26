Rails.application.routes.draw do
  root 'static_pages#home'
  get '/index', to: 'static_pages#index'
  get  '/signup',  to: 'users#new'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :users, only: [:index, :show]
    end
  end
end
