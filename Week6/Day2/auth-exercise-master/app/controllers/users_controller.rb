class UsersController < ApplicationController
  before_action :check_if_logged_in, only: [:show, :index]
  before_action :check_if_admin, only: [:index]
  before_action :get_current_user, only: [:home, :show]
  # this will affect all methods in this controller, unless we include "only"

  # renders the home page
  def home
    get_current_user
    render :home
  end

    def index
      get_current_user
      if session[:user_id] && @current_user.role == "admin"
        @users = User.all
        render :index
      elsif session[:user_id] && @current_user.role != "admin"
        flash[:admin_only] = "Only administrators can see them page"
        redirect_to "/"
      else
        flash[:need_to_login_message] = "You need to login to seee the list of users page."
        redirect_to "/login"
      end
  end

  # renders the signup form
  def new
    if session[:user_id]
      redirect_to "/"
    else
      render :new
  end
end


  def show
    get_current_user
    render:show
  end

  # receives form and creates a user from that data
  def create
    user = User.new(user_params)
    if user.save
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end


  private

  def user_params
     params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def user_logged_in?
    if session[:user_id]
      true
    else
      false
    end
  end
end
