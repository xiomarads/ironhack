class ConcertsController < ApplicationController
  def index
      @concertstoday = Concert.where(date: DateTime.now.to_date..Date.tomorrow)
      @concertsthismonth = Concert.where(date: Date.tomorrow..Date.today.end_of_month)
      render :index
  end
  def show
    @concert = Concert.find(params[:id])
    @mycomment = @concert.comments.new
    render :show
  end

  def new
  @the_concert = Concert.new
  render :new
end

def create
  @the_concert = Concert.new(
    artist: params[:concert][:artist],
    venue: params[:concert][:venue],
    city: params[:concert][:city],
    date: params[:concert][:date],
    price: params[:concert][:price],
    description: params[:concert][:description])

    @the_concert.save

  redirect_to("/concerts")
  end
end
