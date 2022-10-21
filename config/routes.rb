Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get '/categories', to: 'categories#index'
  get '/searchProduct/:query', to: 'products#search'
end
