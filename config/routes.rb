Rails.application.routes.draw do

  resources :pacientes
  resources :home
  resources :admin
  resources :dentista
  get "cadastro", to: "cadastro#new"
  post "cadastro", to: "cadastro#create"
  get "login", to: "login#new"
  post "login", to: "login#create"
  delete"logout", to: "login#destroy"
  get "acesso_paciente", to: "acesso_paciente#new"
  post "acesso_paciente", to: "acesso_paciente#create"
  delete"paciente_logout", to: "acesso_paciente#destroy"


  root to: "home#index"
end
