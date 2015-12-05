Rails.application.routes.draw do
  resources :users, except: [:new]
  resources :articles

  get 'signup', to: 'users#new'

  root 'pages#about'
end
