Rails.application.routes.draw do
  post "like/:post_id/create" => "like#create"
  post "like/:post_id/destroy" => "like#destroy"

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  post "users/:id/destroy" => "users#destroy"

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get '/signup' => "users#new"
  get 'users/index' => "users#index"
  get 'users/:id' => "users#show"
  get 'users/:id/likes' => "users#likes"

  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  get 'posts/:id' => "posts#show"
  get 'posts/:id/edit' => "posts#edit"
  post 'posts/create' => "posts#create"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get '/' => "home#top"
  get 'top' => "home#top"
  get 'about' => "home#about"
end
