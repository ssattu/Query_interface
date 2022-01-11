Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "user_details#index"
  get "user_details/new" => "user_details#new"
  post "user_details/new" => "user_details#create"
  get "user_details/:id/edit" => "user_details#edit"
  patch "user_detail/:id" => "user_details#update"
  get "user_details/show/:id" => "user_details#show"


  resources :user_details

end
