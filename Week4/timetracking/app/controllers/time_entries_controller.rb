class TimeEntriesController < ApplicationController
  def index
    @myproject = Project.find(params[:project_id])
    @my_entries = @myproject.time_entries
  end
end
