# frozen_string_literal: true

class ApplicationController < ActionController::Base
  layout -> { ApplicationLayout }

  def index
    render Articles::IndexView.new(articles: Article.all)
  end
end
