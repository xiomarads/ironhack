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
    @my_entry = @myproject.time_entries.new(entry_params)

    if @my_entry.save
      redirect_to project_time_entries_path(@myproject)
    else
      render :new
    end
  end

  def edit
    @myproject = Project.find params[:project_id]
    @my_entry = @myproject.time_entries.find params[:id]
    render :edit
  end

  def update
    @myproject = Project.find_by(id: params[:project_id])
    @my_entry = @myproject.time_entries.find_by(id: params[:id])

    if @my_entry.update(entry_params)
      # COMES FROM THE PRIVATE METHOD BELOW, NOT RAILS MAGIC!
redirect_to '/projects/#{@myproject.id}/time_entries'
  else
      render :edit
    end
  end

  def destroy
    myproject = Project.find_by(id: params[:project_id])
    my_entry = myproject.time_entries.find(params[:id])
    my_entry.destroy
  redirect_to project_time_entries_path(myproject)
    end

  private

  def entry_params
    params.require(:time_entry).permit(:hours, :minutes, :date, :comments)
  end
end
