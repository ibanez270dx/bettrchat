Rails.application.routes.draw do

  root 'rooms#index'
  get '/at', to: 'rooms#show', as: :room

  mount ActionCable.server => '/cable'
end
