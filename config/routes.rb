Rails.application.routes.draw do
  get 'static/index'

  devise_for :users
  resources :users, :except => [:index, :destroy]
  resources :dishes
  root :to => 'static#index'
  get '/booking' => 'static#booking'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
