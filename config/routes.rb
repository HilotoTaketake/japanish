Rails.application.routes.draw do
  devise_for :english_users, controllers: {
    registrations: 'english_users/registrations'
  }
  devise_for :japanese_users, controllers: {
    registrations: 'japanese_users/registrations'
  }

  
  root to: "tops#index"
  resources :japanese_users
  resources :english_users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
# post '/users', to: 'registrations#create', as: :create_user_registration
# devise_for :users, controllers: {
#   registrations: 'users/registrations',
#   sessions: 'users/sessions'
# }