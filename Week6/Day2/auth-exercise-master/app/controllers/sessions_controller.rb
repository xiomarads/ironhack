class SessionsController < ApplicationController

  def new
    if session[:user_id]
      redirect_to "/"
    else
      render :new
    end
  end

  def create
    user_maybe = User.find_by(email: params[:email])   #find method is only for id's

    if user_maybe == nil ||
      user_maybe.authenticate(params[:password]) == false
      redirect_to "/login"
    else
      session[:user_id] = user_maybe.id
      # session is a hash, so we need to give it a key, in this case the user ID. Session is Rails magic.
      redirect_to "/"
  end
end

  def destroy

    session.clear
    redirect_to "/"
  end
end
