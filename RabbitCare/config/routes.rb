Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'user/registrations', omniauth_callbacks: "user/omniauth_callbacks" }
  match 'user/:id/finish_signup' => 'user#finish_signup', via: [:get, :patch], :as => :finish_signup
  devise_scope :user do
    root to: "devise/sessions#new"
    get '/login', to: 'devise/sessions#new', as: 'login'
    
  end

  devise_for :medicos
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :medicos
  resources :registrar
end


