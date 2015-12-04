Rails.application.routes.draw do
  get 'new', to: 'users#new'

  root 'pages#about'
end
