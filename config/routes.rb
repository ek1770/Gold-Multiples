TxnMultiples::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => redirect("/users/login")

  resources :users

  # generates the routes that point to
  # the transactions controller
  resources :transactions
end

