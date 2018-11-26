Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'user/registrations', omniauth_callbacks: "user/omniauth_callbacks" }
  
  devise_scope :user do
    root to: "devise/sessions#new"
    get '/login', to: 'devise/sessions#new', as: 'login'
  end


  devise_for :medicos
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :mensagems, only: [:new, :create]
  resources :conversas, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :medicos
  resources :registrar

  mount ActionCable.server => '/cable'
end


