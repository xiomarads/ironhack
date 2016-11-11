class ConcertsController < ApplicationController
  def index
      @concertstoday = Concert.where(date: DateTime.now.to_date..Date.tomorrow)
      @concertsthismonth = Concert.where(date: Date.tomorrow..Date.today.end_of_month)
      render :index
  end
  def show
    @concert = Concert.find(params[:id])
    render :show
  end
end
