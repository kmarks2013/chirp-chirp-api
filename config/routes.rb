Rails.application.routes.draw do
  resources :users, only: [:index, :show, :update, :destroy]

  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
