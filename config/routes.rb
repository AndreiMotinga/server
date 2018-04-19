Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :plans
    resources :posts
    resources :tags

    root to: "users#index"
  end
  namespace :api, defaults: { format: :json }  do
    mount_devise_token_auth_for "User", at: "auth"
    resources :posts
    resources :subscriptions, only: :create
  end
end
