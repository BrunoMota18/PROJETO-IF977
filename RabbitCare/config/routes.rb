Rails.application.routes.draw do
  get 'crud_usuarios/index'
  devise_for :users, :controllers => {registrations: 'user/registrations', omniauth_callbacks: 'callbacks'}
  devise_scope :user do
    root to: "devise/sessions#new"
    get '/login', to: 'devise/sessions#new', as: 'login'
  end

  devise_for :medicos
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :medicos
  resources :registrar
  resources :crud_usuarios
end