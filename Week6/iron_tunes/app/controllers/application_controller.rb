class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #when making an API we have to disable protect_from_forgery
  #takes care of authenticity token
  #every other controller inherits from this controller
  #our controllers will have everything this class has
  #this class inherits from the ActionController
  #our app inherits from from both ActionController and ApplicationController
end
