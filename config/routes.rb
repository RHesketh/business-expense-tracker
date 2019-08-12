# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :sessions, only: [:new, :create, :destroy]
  get 'sign_in', to: 'sessions#new', as: 'sign_in'
  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'
end
