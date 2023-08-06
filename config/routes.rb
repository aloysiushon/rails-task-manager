Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Read all
  get "tasks", to: "tasks#index"
  # Create
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # Read one
  get "task/:id", to: "tasks#show", as: "task"
  # Update
  get "task/:id/edit", to: "tasks#edit", as: "edit"
  patch "task/:id", to: "tasks#update"
  # Delete
  delete "task/:id", to: "tasks#destroy"
end
