# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :articles, except: %i[new edit]
  end
  root to: "application#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
