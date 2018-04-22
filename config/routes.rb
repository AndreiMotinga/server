Rails.application.routes.draw do
  namespace :admin do
    %i(
      users
      plans
      posts
      tags
    ).each do |name|
      resources name, only: %i(index show new create edit update destroy)
    end

    root to: "users#index"
  end

  namespace :api, defaults: { format: :json }  do
    mount_devise_token_auth_for "User", at: "auth"
    resources :posts
    resources :subscriptions, only: :create
  end

  get "*path", to: "application#index", constraints: ->(request) do
    !request.xhr? && request.format.html?
  end

  root "application#index"
end
