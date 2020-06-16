Rails.application.routes.draw do

  resources :users do
    get 'likes', to: 'users#likes'
  end
  resources :posts
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get '/likes' => 'likes#index'
  post '/likes' => 'likes#toggle_like'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  post '/logout' => 'sessions#destroy'
# resources :users do
#   get 'likes', to: 'users#likes'
# end
# resources :posts
# get 'sessions/new'
# get 'sessions/create'
# get 'sessions/login'
# get 'sessions/welcome'
# get '/likes' => 'likes#index'
# post '/likes' => 'likes#toggle_like'
# get 'login', to: 'sessions#new'
# post 'login', to: 'sessions#create'
# get 'welcome', to: 'sessions#welcome'
# get 'authorized', to: 'sessions#page_requires_login'
# post '/logout' => 'sessions#destroy'

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end