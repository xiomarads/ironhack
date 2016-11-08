class AsciisController < ApplicationController
  def new
    render 'new'
  end

  def create
      @text = params[:asciis_conversion][:user_text]
      a = Artii::Base.new :font => 'slant'
      a.asciify(@text)
      render "ascii conversion"
  end
end
