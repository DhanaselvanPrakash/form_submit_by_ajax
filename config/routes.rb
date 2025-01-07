Rails.application.routes.draw do
  root "todo#index"
  get "todos", to: "todo#show", as: :todos
  get "todo/:id", to: "todo#todo", as: :todo
  get "create_todo", to: "todo#new", as: :create_todo
  post "create", to: "todo#create", as: :create
  delete "delete_todo", to: "todo#delete", as: :delete_todo
end
