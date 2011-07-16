App2::Application.routes.draw do
  devise_for :accounts

  authenticate :account do
    resources :users, :only => [:create, :index, :edit, :update, :new]
    root :to => "users#index"
  end
end
