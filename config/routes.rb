Rails.application.routes.draw do
	
  #get 'books/index'
  #get 'books/create'
  
  get 'books' => 'books#index'
  post 'books' => 'books#create'       # post = Create
  get 'books/:id' => 'books#show'
  patch 'books/:id' => 'books#update'  # patch = Update
  delete 'books/:id' => 'books#destroy'
  

  
  #get 'pages/home'  
  #get 'home' => 'pages#home'
  root 'pages#home'
  
  get 'test' => 'pages#test'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
