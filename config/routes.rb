Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :posts

    root to: "users#index"
  end

  namespace :api, defaults: { format: :json } do
    mount_devise_token_auth_for "User", at: "auth"
  end
end
