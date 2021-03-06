Rails.application.routes.draw do
  devise_for :users
  resources :documents

  authenticated :user do
    root "documents#index", as: "authenticated_root"
  end

  root 'pages#index'
end
