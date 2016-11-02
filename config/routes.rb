Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture', to:'pokemons#capture'
  patch 'damage', to:"pokemons#damage"
  get 'new', to: "pokemons#new", as: 'pokemons'
  patch 'new', to:"pokemons#new"
  post 'new', to: "pokemons#create"

  
end
