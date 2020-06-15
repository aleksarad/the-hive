Rails.application.routes.draw do
  root to: 'posts#index'

  resources :users
  resources :posts
  resources :users do 
    resources :posts do
      resources :likes, only: [:create, :delete]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
