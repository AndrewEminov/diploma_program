Rails.application.routes.draw do
  resources :messages
  resources :chats
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/signup',  to: 'users#new'
  get '/downloads/:id', to: 'upload_files#download', as: 'download'

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :disciplines
  resources :groups
  resources :departments
  resources :institutes
  resources :users
  resources :specialities
  resources :upload_files
  resources :microposts,          only: [:create, :destroy, :show, :index]
  resources :relationships,       only: [:create, :destroy]
  resources :messages



  get 'search', to: 'specialities#search'
  root 'users#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
