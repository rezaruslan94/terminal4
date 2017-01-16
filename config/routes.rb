Rails.application.routes.draw do
  resources :divisions
  resources :pics
  resources :areas
  resources :parts
  resources :departments
  resources :items
  resources :employes
  root 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
