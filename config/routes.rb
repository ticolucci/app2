App2::Application.routes.draw do
  resources :users, :only => [:create, :index]

  root :to => "users#index"
end
