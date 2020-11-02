Rails.application.routes.draw do
  get "songs", to: "songs#index"
  get "songs/new", to: "songs#new"
  post "songs/create", to:"songs#create"
  get "songs/:id", to:"songs#show", as: 'song'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
