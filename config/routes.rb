Rails.application.routes.draw do

  resources :employees
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :divisions
  resources :pics
  resources :areas
  resources :parts
  resources :departments
  resources :items
  root 'pages#home'
  get 'report_people' =>'reports#productivity_people', :as => :report_people
  get 'report_person' =>'reports#productivity_person', :as => :report_person


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
