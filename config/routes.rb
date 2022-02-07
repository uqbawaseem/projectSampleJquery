Rails.application.routes.draw do
  root "students#index"
  get "students", to: "students#index"
  get "students/new", to: "students#new"
  post "/students", to: "students#create"
  get "students/:id", to: "students#show", as: "student"
  get "students/:id/edit", to: "students#edit", as: "edit_student"
  patch "students/:id", to: "students#update"
  delete "students/:id", to: "students#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
