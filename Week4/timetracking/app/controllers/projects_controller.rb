class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc).limit(10)
      render :index
  end

  def show
    @myproject = Project.find(params[:id])
    render :show
  end
end
