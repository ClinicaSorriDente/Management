Rails.application.routes.draw do

  resources :pacientes
  resources :home
  resources :admin
  get "cadastro", to: "cadastro#new"
  post "cadastro", to: "cadastro#create"
  get "login", to: "login#new"
  post "login", to: "login#create"
  delete"logout", to: "login#destroy"


  root to: "home#index"
end
