Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :resource, only: [ :show, :index ]
  resources :job, only: [ :show, :index ]
  get 'dashboard', to: 'pages#dashboard'
  get 'profile', to: 'pages#profile'

  get 'assessments', to: 'pages#assessments'

end
