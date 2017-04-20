Rails.application.routes.draw do

  resources :terminal_fourths do
    member do
      get :edit_finish
      post :update_finish
    end
  end
  resources :buyers
    resources :buyer do
      resources :terminal_fourths do
        collection do
          get   :bulk_new
          post  :bulk_insert
        end
      end
    end
  devise_for :users
  resources :employees
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :divisions
  resources :pics
  resources :areas
  resources :area do
    resources :pics do
      collection do
        get  :bulk_new
        post :bulk_insert
      end
    end
  end
  resources :parts
  resources :departments
  resources :items
  root 'pages#home'
  # resources :reports, only: [:productivity_people, :productivity_person]
  get 'report_people' =>'reports#productivity_people', :as => :report_people
  get 'report_person' =>'reports#productivity_person', :as => :report_person
  get 'test' =>'reports#test', :as => :test
  get 'show' =>'reports#show', :as => :show
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
