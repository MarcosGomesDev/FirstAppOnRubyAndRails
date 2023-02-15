Rails.application.routes.draw do
  devise_for :users
  resources :friends
  # get 'home/index'
  get 'home/about'
  devise_scope :user do
    authenticated :user do
      root 'friends#index', as: :authenticated_root
    end

    unauthenticated :user do
      root 'home#index', as: :unauthenticated_root
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
