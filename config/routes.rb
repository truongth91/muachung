Rails.application.routes.draw do
  get 'admin/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :products
  root :to => 'products#index'
  get 'admin' => 'admin#index'
  
  controller :sessions do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
  end

  controller :users do
    get 'new' => :new
    post 'create' => :create
    delete 'delete' => :destroy
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
