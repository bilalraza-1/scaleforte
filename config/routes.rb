Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
  get "/contact", to: "pages#contact"
  post "/request_form_submissions/create", to: "request_form_submissions#create"
end
