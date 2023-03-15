Rails.application.routes.draw do
  resources :recepcionista
  resources :consulta
  resources :pacientes do
    resources :endereco_paciente
  end
  resources :home
  resources :admin do
    resources :dentista
  end
  get "login", to: "login#new"
  post "login", to: "login#create"
  delete"logout", to: "login#destroy"
  get "acesso_paciente", to: "acesso_paciente#new"
  post "acesso_paciente", to: "acesso_paciente#create"
  delete"paciente_logout", to: "acesso_paciente#destroy"
  post "admin/:admin_id/dentista/new", to: "dentista#create"
  get "acesso_recepcionista", to: "acesso_recepcionista#new"
  post "acesso_recepcionista", to: "acesso_recepcionista#create"
  delete"recepcionista_logout", to: "acesso_recepcionista#destroy"


  root to: "home#index"
end
