Rails.application.routes.draw do
  # get "students/index"
  # get "students/edit"
  # get "students/new"
  # get "students/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :students
  # Defines the root path route ("/")
  root "students#index"
end
