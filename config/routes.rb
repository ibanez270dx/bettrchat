Rails.application.routes.draw do

  root 'rooms#show', as: :room

  mount ActionCable.server => '/cable'
end
