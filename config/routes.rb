Rails.application.routes.draw do
  root 'pages#index'
  resources :documents
end
