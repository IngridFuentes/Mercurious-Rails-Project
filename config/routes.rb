Rails.application.routes.draw do
  get "sessions/new"
  # User Routes
  # RESTful routes
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit"
  post "/users", to: "users#create"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#delete"
  # custom routes
  get "/users/:id/meetups", to: "users#meetups"
  get "/users/:id/new_languages", to: "users#new_languages"
  post "/users/:id/languages", to: "users#add_languages", as: "user_languages"
  # get "/users/:id/languages"

  get "/languages", to: "languages#index", as: "languages"
  get "/languages/new", to: "languages#new", as: "new_language"
  get "/languages/:id", to: "languages#show", as: "language"
  get "/language/:id/edit", to: "languages#edit"
  post "/languages", to: "languages#create"
  patch "/languages/:id", to: "languages#update"
  delete "/languages/:id", to: "languages#delete"

  # session routes
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"

  # get "/userlanguages", to: "user_languages#index", as: "userlanguages"
  # get "/userlanguages/new", to: "userlanguages#new", as: "new_userlanguage"
  # get "/userlanguages/:id", to: "userlanguages#show", as: "userlanguage"
  # get "/userlanguages/:id/edit", to: "userlanguages#edit"
  # post "/userlanguages", to: "userlanguages#create"
  # patch "/userlanguages/:id", to: "userlanguages#update"
  # delete "/userlanguages/:id", to: "userlanguages#delete"

  # get "/meetups", to: "meetups#index", as: "meetups"
  # get "/meetups/new", to: "meetups#new", as: "new_meetup"
  # get "/meetups/:id", to: "meetups#show", as: "meetup"
  # get "/meetups/:id/edit", to: "meetups#edit"
  # post "/meetups", to: "meetups#create"
  # patch "/meetups/:id", to: "meetups#update"
  # delete "/meetups/:id", to: "meetups#delete"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
