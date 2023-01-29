# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  post 'user', to: 'users#create'
  post 'login', to: 'sessions#create'

  get 'maze', to: 'maze#index'
  post 'maze', to: 'maze#create'
  get 'maze/:mazeId/solution', to: 'maze#solution'
end
