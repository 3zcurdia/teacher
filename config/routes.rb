# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :articles, except: %i[new edit]
  end
  root to: "application#index"
  get "logout", to: "sessions#destroy", as: "logout"
  resources :sessions, only: %i[new create]
end
