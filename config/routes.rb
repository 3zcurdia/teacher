# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :articles, except: %i[new edit]
  end
  root to: "application#index", constraints: ->(req) { req.env['warden'].authenticated? }, as: :authenticated_root
  root to: "home#index", constraints: ->(req) { req.env['warden'].unauthenticated? }
  get "logout", to: "sessions#destroy", as: "logout"
  resources :sessions, only: %i[new create]
end
