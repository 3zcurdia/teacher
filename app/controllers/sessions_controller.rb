class SessionsController < ApplicationController
  skip_before_action :auhtenticate!

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Welcome #{user.email}!"
    else
      render :new, alert: "Unable to find email or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Succesfully signed out"
  end
end
