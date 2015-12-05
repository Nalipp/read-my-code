Rails.application.routes.draw do
  resources :users, except: [:new]

  get 'signup', to: 'users#new'

  root 'pages#about'
end
