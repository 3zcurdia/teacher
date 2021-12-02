class SessionsController < ApplicationController
  skip_before_action :authenticate!

  def new
  end

  def create
    warden.authenticate!
    redirect_to root_url, notice: "Welcome #{current_user.email}!"
  end

  def destroy
    warden.logout
    redirect_to root_url, notice: "Succesfully signed out"
  end
end
