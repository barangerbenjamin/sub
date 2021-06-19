Rails.application.routes.draw do
  resources :subscriptions, except: :index
  devise_for :users
  root to: 'subscriptions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
