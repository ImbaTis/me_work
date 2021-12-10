Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :resources, only: [ :show, :index ] do
    collection do
      get :article, :book, :course, :video
    end
  end
  resources :jobs, only: [ :show, :index ]
  resources :favorites, only: [ :create, :delete ]
  get 'dashboard', to: 'pages#dashboard'
  get 'profile', to: 'pages#profile'
  get 'assessments', to: 'pages#assessments'
  get 'joinus', to: 'pages#joinus'
  get 'comingsoon', to: 'pages#comingsoon'

end
