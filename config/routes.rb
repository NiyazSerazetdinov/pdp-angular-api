Rails.application.routes.draw do
  scope defaults: { format: :json } do
    devise_for :users, only: []
  end

  namespace :v1, defaults: { format: "json" } do
    devise_scope :user do
      post "users/sign_in", to: 'sessions#create'
    end

    resources :articles, only: %i(index show create) do
      resources :comments, only: %i(create)
    end
  end
end
