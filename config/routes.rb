Rails.application.routes.draw do
  resources :comments
  resources :posts
  get "/get/post", to: "posts#getOne"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
