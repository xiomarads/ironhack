class TextInspectionsController < ApplicationController
  def new
    render 'new'
  end
  def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    @wpm = @word_count / 4.583 / 60

    render "results"
  end
end
