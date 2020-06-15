Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
    get '/likes' => 'likes#index'
    post '/likes' => 'likes#add_like'
    delete '/likes' => 'likes#remove_like'
    resources :posts
    resources :users do
      resources :likes, only: [:index]
    end
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    get 'welcome', to: 'sessions#welcome'
    get 'authorized', to: 'sessions#page_requires_login'
    post '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
