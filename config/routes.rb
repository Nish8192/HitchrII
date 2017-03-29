Rails.application.routes.draw do
    get "/" => "sessions#new"
    post "/sessions/create" => "sessions#create"

    get "/users/new" => "users#new"
end
