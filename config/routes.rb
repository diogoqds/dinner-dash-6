Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'

  #Refeicoes
  get '/meals', to: 'meals#index'
  get '/meals/new', to: 'meals#new'
  post '/meals', to: 'meals#create'

  #Categorias
  get '/categories', to: 'categories#index'
  get '/categories/new', to: 'categories#new'
  post '/categories', to: 'categories#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
