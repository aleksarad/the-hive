Rails.application.routes.draw do
  resources :likes
  resources :posts, only: [:index, :new, :create, :edit, :update]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
