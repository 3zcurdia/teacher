# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def index
    @articles = Article.all
  end

  private

  def current_user
    User.last

  end
end
