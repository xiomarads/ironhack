#this method is the one that displays the homepage view

class SiteController < ApplicationController
  def home
    render 'home'  #name of view template, it will render a erb
  end
  def contact
    render 'contact'
  end
  def say_name
    @name = params[:name]
    render 'say_name'
  end
end
