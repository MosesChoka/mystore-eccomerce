Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :categories
  end
  devise_for :admins
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #
  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

  get "/admin", to: "admin#index"
end
