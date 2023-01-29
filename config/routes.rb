# frozen_string_literal: true

Rails.application.routes.draw do
  post 'user', to: 'users#create'
  post 'login', to: 'sessions#create'

  get 'maze', to: 'maze#index'
  post 'maze', to: 'maze#create'
  get 'maze/:mazeId/solution', to: 'maze#solution'
end
