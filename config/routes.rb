Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get '/categories', to: 'categories#index'
end
