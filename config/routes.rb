Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'threads#index'

    get "/users" => "users#index"
    get "/users/new" => 'users#new'
    post "/users" => 'users#create'
    get "/users/:id" => 'users#show'
    delete "/users/:id" => 'users#destroy'
    # get "/users/:id/edit" => 'users#edit'
    # patch "/users/:id" => 'users#update'

    get "/threads" => "threads#index"
    get "/threads/new" => 'threads#new'
    post "/threads" => 'threads#create'
    get "/threads/:id" => 'threads#show'
    delete "/threads/:id" => 'threads#destroy'
    get "/threads/:id/edit" => 'threads#edit'
    patch "/threads/:id" => 'threads#update'

    # get "/discussions" => "discussions#index"
    get "/discussions/new" => 'discussions#new'
    post "/discussions" => 'discussions#create'
    get "/discussions/:id" => 'discussions#show'
    delete "/discussions/:id" => 'discussions#destroy'
    get "/discussions/:id/edit" => 'discussions#edit'
    patch "/discussions/:id" => 'discussions#update'

    # get "/comments" => "comments#index"
    get "/comments/new" => 'comments#new'
    post "/comments" => 'comments#create'
    get "/comments/:id" => 'comments#show'
    delete "/comments/:id" => 'comments#destroy'
    get "/comments/:id/edit" => 'comments#edit'
    patch "/comments/:id" => 'comments#update'



    # get "/signup" => "users#new"

    get "/sessions/new" => "sessions#new"
    post "/sessions" => "sessions#create"
    get "/logout" => "sessions#destroy"



end
