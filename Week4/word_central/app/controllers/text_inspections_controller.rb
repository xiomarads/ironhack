class TextInspectionsController < ApplicationController
  def new
    render 'new'
  end
  def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    @wpm = @word_count / 4.583 / 60

    word_count = Hash.new(0)
    words_array.each do |one_word|
    word_count[one_word] += 1
    end

    render "results"
  end
end
