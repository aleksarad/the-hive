Rails.application.routes.draw do
  get '/likes' => 'likes#index'
  post '/likes' => 'likes#add_like'
  delete '/likes' => 'likes#delete'
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
