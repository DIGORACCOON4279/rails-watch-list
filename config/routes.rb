Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Un usuario puede ver todas las listas
  get "lists",                   to: "lists#index"
  # Un usuario puede ver el nombre y el detalle de una lista específica
  get "lists/:id",               to: "lists#show"
  # Un usuario puede crear una nueva lista
  get "lists/new",               to: "lists#new"
  post "lists",                  to: "lists#create"

  get "lists/:id/bookmarks/new", to: "lists#new"
  post "lists/:id/bookmarks",    to: "lists#update"

  #Un usuario puede borrar un bookmark de una lista. ¿Cómo podemos crear un link de delete?
  delete "bookmarks/:id",         to: "lists#destroy"
end
