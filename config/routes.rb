Rails.application.routes.draw do
  devise_for :english_users, controllers: {
    registrations: 'english_users/registrations',
    sessions: 'english_users/sessions'
  }
  
  devise_for :japanese_users, controllers: {
    registrations: 'japanese_users/registrations',
    sessions: 'japanese_users/sessions'
  }

  
  root to: "tops#index"
  
  # get 'english_users/english_users#search', to: 'english_users/english_users#index', as: :search_english_users
  get '/english_users/:id', to: 'english_users/registrations#index', as: :index_english_user_registration
  get '/english_users', to: 'english_users/english_users#index', as: :english_users
  get '/english_users/:id/edit', to: 'english_users/registrations#edit', as: :english_user_edit_registration
  patch '/english_users/:id', to: 'english_users/registrations#update', as: :update_english_user_registration
  delete '/english_users/sign_out', to: 'english_users/sessions#destroy', as: :english_user_destroy_session
  get '/english_users/:id/sign_out', to: 'english_users/sessions#index', as: :english_user_sessions_index
  get '/english_users/:format/sign_in', to: 'english_users/sessions#new', as: :english_user_new_session
  post '/english_users/:id/sign_in', to: 'english_users/sessions#create', as: :create_english_user_session
  post '/english_users/:id', to: 'english_users/registrations#create', as: :create_english_user_registration

  # get 'japanese_users/japanese_users#search', to: 'japanese_users/japanese_users#index', as: :search_japanese_users
  get '/japanese_users/:id', to: 'japanese_users/registrations#index', as: :index_japanese_user_registration
  get '/japanese_users', to: 'japanese_users/japanese_users#index', as: :japanese_users
  get '/japanese_users/:id/edit', to: 'japanese_users/registrations#edit', as: :japanese_user_edit_registration
  patch '/japanese_users/:id', to: 'japanese_users/registrations#update', as: :update_japanese_user_registration
  delete '/japanese_users/sign_out', to: 'japanese_users/sessions#destroy', as: :japanese_user_destroy_session
  get '/japanese_users/:id/sign_out', to: 'japanese_users/sessions#index', as: :japanese_user_index_session
  get '/japanese_users/:format/sign_in', to: 'japanese_users/sessions#new', as: :japanese_user_new_session
  post '/japanese_users/:id/sign_in', to: 'japanese_users/sessions#create', as: :create_japanese_user_session
  post '/jspsnese_users/:id', to: 'japanese_users/registrations#create', as: :create_japanese_user_registration

  # get '/english_users', to: 'english_users/sessions#index', as: :english_user_index_session
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :japanese_users 
  resources :english_users


end
