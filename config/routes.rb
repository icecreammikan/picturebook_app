Rails.application.routes.draw do
  # get 'books/index'
  post 'books/new'
  # get 'books/create'
  # get 'books/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "books#index"
  resources :books, only: [:index, :new, :create, :show]
end
