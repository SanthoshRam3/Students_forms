Rails.application.routes.draw do
  root'pages#home'
  get 'about', to: 'pages#about'
  # root 'table#show'
  # get 'table/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :table 
end