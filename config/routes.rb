Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "welcome#index"
  get "/bookstores", to: "bookstores#index"
  get "/bookstores/:id", to: "bookstores#show"
  get "/books", to: "books#index"
  get "/books/:id", to: "books#show"
  get "/bookstores/:id/books", to: "books#bookstoresbooks"
end
