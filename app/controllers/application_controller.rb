# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :auhtenticate!

  def index
    @articles = Article.all
  end

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def auhtenticate!
    redirect_to new_session_path, alert: "Not Authorized" if current_user.blank?
  end
end
