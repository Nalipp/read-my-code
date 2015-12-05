Rails.application.routes.draw do
  resources :users, except: [:new]
  resources :articles, except: [:index]

  root   'articles#index'

  get    'signup', to: 'users#new'
  get    'about',  to: 'pages#about'

  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
