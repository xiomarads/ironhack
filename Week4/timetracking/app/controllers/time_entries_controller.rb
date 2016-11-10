class TimeEntriesController < ApplicationController
  def index
    @myproject = Project.find(params[:project_id])
    @my_entries = @myproject.time_entries
  end

  def new
    @myproject = Project.find(params[:project_id])
    @my_entry = @myproject.time_entries.new  #blank entry to add it to the existing project.
    render :new
  end

  def create
    @myproject = Project.find params[:project_id]
    @my_entry = @myproject.time_entries.new(
    hours: params[:time_entry][:hours],
    minutes: params[:time_entry][:minutes],
    date: params[:time_entry][:date],
    comments: params[:time_entry][:comments])

    if @my_entry.save
      redirect_to project_time_entries_path(@myproject)
    else
      render :new
    end
  end

end
