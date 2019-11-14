Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :clients

  resources :clientappointments, except: :destroy
  get '/clientappointments/:id', to: 'clientappointments#destroy', as: 'delete_clientappointment'
  resources :employees
  resources :customers
  resources :customerappointments
  get '/', to: "welcomes#index", as: "home"
  get '/products', to: "products#index", as: "products"


end
