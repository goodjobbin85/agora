Rails.application.routes.draw do
  root "welcome#home"

  resources :users
  
  resources :services, except: [:show] do 
    resources :companies
  end
  
end
