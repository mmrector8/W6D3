Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    resources :users, only: [:create, :destroy, :index, :show, :update]

    resources :users do 
      resources :artworks, only: [:index]
    end

    resources :users do
      resources :comments, only: [:index]
    end

    resources :artworks, only: [:create, :destroy, :show, :update]

    resources :artwork_shares, only: [:create, :destroy]

    resources :comments, only: [:index, :create, :destroy]
    
    resources :artworks do
      resources :comments, only: [:index]
    end
end 
