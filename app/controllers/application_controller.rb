# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate!

  def index
    @articles = Article.all
  end

  protected

  def authenticate!
    return if signed_in?

    head :unauthorized
  end

  def current_user = warden.user
  helper_method :current_user

  def signed_in? = warden.authenticated?
  helper_method :signed_in?

  def warden = request.env['warden']
end
