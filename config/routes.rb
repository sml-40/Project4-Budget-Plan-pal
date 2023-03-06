Rails.application.routes.draw do
  get '/home', to: 'pages#home', as: 'home'
  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get the login route from the sessions controller and the new action
  get 'login', to: 'sessions#new'
  # post the login route from the sessions controller and the create action
  post 'login', to: 'sessions#create'
  # get the logout route from the sessions controller and the destroy action
  delete '/logout', to: 'sessions#destroy'

  # get the register route from the registrations controller and the new action
  get '/register', to: 'registrations#new'
  # post the register route from the registrations controller and the create action
  post '/register', to: 'registrations#create'

  # get the dashboard route from the dashboard controller and the index action (this is the user's dashboard) and name it dashboard
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get '/dashboard', to: 'dashboard#index', as: :dashboard

  # get the categories route from the categories controller and the index action (this is the user's categories)
  # nested resources for expenses under categories
  resources :categories do
    resources :expenses
  end
  end
