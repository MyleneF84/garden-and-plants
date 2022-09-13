Rails.application.routes.draw do
  get 'plants/create'
  get 'plants/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :gardens do
    resources :plants
  end
  resources :plants
end
