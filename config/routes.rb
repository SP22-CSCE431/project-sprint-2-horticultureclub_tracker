# frozen_string_literal: true

Rails.application.routes.draw do
  resources :positions
  resources :points
  resources :members
  resources :events
  resources :plants

  root 'dashboard#index'

  get 'leaderboard', to: 'leaderboard#index'
  get 'dashboard', to: 'dashboard#index'

  mount API::Base, at: '/'

  get '*path', to: 'dashboard#index', via: :all

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
