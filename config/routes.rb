Rails.application.routes.draw do
  post 'books/index'
  post 'books/new'
  post 'books/create'
  post 'books/show'
  # get  '/uploads/book/image'
  root to: "books#index"
  resources :books do
    resources :reviews, only: [:new, :create]
  end
  # , only: [:index, :new, :create, :update, :show]

end
