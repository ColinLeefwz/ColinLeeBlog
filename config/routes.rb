Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "home#index"

  get '/sign_up' => 'users#new', as: 'sign_up'

  resources :users do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
