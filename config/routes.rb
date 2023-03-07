Rails.application.routes.draw do
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


  root to: "home#index"
end
