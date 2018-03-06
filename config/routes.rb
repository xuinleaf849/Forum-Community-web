Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'topics#index'

    resources :users
    # get "/users" => "users#index"
    # get "/users/new" => 'users#new'
    # post "/users" => 'users#create'
    # get "/users/:id" => 'users#show'
    # delete "/users/:id" => 'users#destroy'
    # get "/users/:id/edit" => 'users#edit'
    # patch "/users/:id" => 'users#update'

    # ?? not sure for the topics route (should be automatically created and deleted with /discussions)
    get "/topics" => "topics#index"
    get "/topics/new" => 'topics#new'
    post "/topics" => 'topics#create'
    get "/topics/:id" => 'topics#show'
    get "/topics/:id/edit" => 'topics#edit'
    patch "/topics/:id" => 'topics#update'
    delete "/topics/:id" => 'topics#destroy'

    get "/discussions" => "discussions#index"
    get "/discussions/new" => 'discussions#new'
    post "/discussions" => 'discussions#create'
    get "/discussions/:id" => 'discussions#show'
    delete "/discussions/:id" => 'discussions#destroy'
    get "/discussions/:id/edit" => 'discussions#edit'
    patch "/discussions/:id" => 'discussions#update'

    get "/comments" => "comments#index"
    get "/comments/new" => 'comments#new'
    post "/comments" => 'comments#create'
    get "/comments/:id" => 'comments#show'
    delete "/comments/:id" => 'comments#destroy'
    # get "/comments/:id/edit" => 'comments#edit'
    # patch "/comments/:id" => 'comments#update'



    # get "/signup" => "users#new"

    get "/sessions/new" => "sessions#new"
    post "/sessions" => "sessions#create"
    get "/logout" => "sessions#destroy"



end
