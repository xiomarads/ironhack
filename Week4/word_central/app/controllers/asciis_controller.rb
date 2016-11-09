class AsciisController < ApplicationController
  def new
    render 'new'
  end

  def create
      a = Artii::Base.new :font => 'slant'
      @text = params[:asciis_conversion][:user_text]
      @ascitext= a.asciify(@text)
      render "ascii_conversion"
  end
end
