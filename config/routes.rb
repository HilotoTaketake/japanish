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
  delete '/english_users/:id', to: 'english_users/registrations#destroy', as: :destroy_english_user_registration
  delete '/japanese_users/:id', to: 'japanese_users/registrations#destroy', as: :destroy_japanese_user_registration
  get '/english_users/:id/edit', to: 'english_users/registrations#edit', as: :english_user_edit_registration
  patch '/english_users/:id', to: 'english_users/registrations#update', as: :update_english_user_registration
  get '/japanese_users/:id/edit', to: 'japanese_users/registrations#edit', as: :japanese_user_edit_registration
  patch '/japanese_users/:id', to: 'japanese_users/registrations#update', as: :update_japanese_user_registration

  resources :japanese_users
  resources :english_users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# devise_for :users, controllers: {
#   registrations: 'users/registrations',
#   sessions: 'users/sessions'
# }