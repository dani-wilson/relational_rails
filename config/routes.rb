Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "welcome#index"
  get "/bookstores", to: "bookstores#index"
  get "/bookstores/:id", to: "bookstores#show"
end
