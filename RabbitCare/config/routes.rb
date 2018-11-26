Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'user/registrations', omniauth_callbacks: 'callbacks'}
  devise_scope :user do
    root to: "devise/sessions#new"
    get '/login', to: 'devise/sessions#new', as: 'login'
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pacientes
  resources :medicamentos
  resources :utensilios  
  resources :mensagems, only: [:new, :create]
  resources :conversas, only: [:index, :show]
  resources :users, only: [:index, :show]

  mount ActionCable.server => '/cable'
end


