Rails.application.routes.draw do
  resources :asignaturas
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'home/index'

  # root "articles#index"
  root to: "home#index"
  get "/matriculas/form", to:"matriculas#index"   
  get "/matriculas/new", to:"matriculas#new" 
  get "/matriculas/eliminar", to:"matriculas#eliminar"
end

