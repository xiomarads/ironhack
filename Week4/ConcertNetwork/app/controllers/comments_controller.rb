class CommentsController < ApplicationController
  def index
    @myconcert = Concert.find(params[:concert_id])
    @mycomment = @myconcert.comments
  end

  	def create
  		@myconcert = Concert.find(params[:concert_id])
  		@mycomment = @myconcert.comments.new(
  			author: params[:comment][:author],
  			date: params[:comment][:date],
  			comment: params[:comment][:comment])

  		if @mycomment.save
  			redirect_to(concert_path(@myconcert))
      else
        render :new
  		end
  	end
  end
