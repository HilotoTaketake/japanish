Rails.application.routes.draw do
  devise_for :english_users, controllers: {
    registrations: 'english_users/registrations'
  }
  devise_for :japanese_users, controllers: {
    registrations: 'japanese_users/registrations'
  }

  
  root to: "tops#index"
  get '/english_users/:id', to: 'english_users/english_users#index', as: :english_users
  get '/japanese_users/:id', to: 'japanese_users/japanese_users#index', as: :japanese_users
  resources :japanese_users
  resources :english_users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# devise_for :users, controllers: {
#   registrations: 'users/registrations',
#   sessions: 'users/sessions'
# }