Rails.application.routes.draw do

  get "/", to: "welcome#index"
  get "/bookstores", to: "bookstores#index"
  get "/bookstores/new", to: "bookstores#new"
  post "/bookstores/new", to: "bookstores#create"
  get "/bookstores/:id", to: "bookstores#show"
  get "/books/:id", to: "books#show"
  get "/books", to: "books#index"
  get "/bookstores/:id/books", to: "books#bookstoresbooks"
  get "/bookstores/:id/edit", to: "bookstores#edit"
  patch "/bookstores/:id", to: "bookstores#update"
  get "/bookstores/:id/books/new", to: "books#new"
  post "/bookstores/:id/books/new", to: "books#create"
end
