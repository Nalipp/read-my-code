Rails.application.routes.draw do
  resources :users, except: [:new]
  resources :articles, except: [:index]

  get 'signup', to: 'users#new'

  root 'articles#index'
  get  'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete  'logout', to: 'sessions#destroy'
end
