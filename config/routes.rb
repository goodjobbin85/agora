Rails.application.routes.draw do
  root "welcome#home"

  resources :users
  resources :companies
  resources :services, except: [:show]
  
end
