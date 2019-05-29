Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[show]

  resources :orders, only: %i[destroy]

  resources :products do
    resources :orders, only: %i[create]
  end

  get "/users/:id/products", to: "products#user_products", as: "user_products"
  get "/users/:id/sales", to: "products#user_sales", as: "user_sales"
end
