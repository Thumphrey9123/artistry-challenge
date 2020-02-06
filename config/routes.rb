Rails.application.routes.draw do
  resources :joins, only: [:new, :create]
  resources :artists, :instruments
  # get "artists/associate", to: "artists#associate"
  # post "artists/associate", to: "artists#associate"
  
end
