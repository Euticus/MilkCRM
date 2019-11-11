Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :clients
  resources :clientappointments
  resources :employees
  resources :customers
  get '/', to: "welcomes#index", as: "home"
  get '/products', to: "products#index", as: "products"

end
