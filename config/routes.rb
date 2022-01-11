# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "application#index"
  namespace :api do
    resources :articles, except: %i[new edit]
  end
  resources :articles
end
