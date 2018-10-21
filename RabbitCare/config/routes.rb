Rails.application.routes.draw do
  devise_for :enfermeiros
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  resources :enfermeiros
  resources :medicos
  resources :registrar
end
