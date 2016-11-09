class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc).limit(10)
      render :index
  end

  def show
    @myproject = Project.find(params[:id])
    render :show
  end

  def new
    @myproject = Project.new
    render "new"
  end

  def create
    @myproject = Project.new(
    :name => params[:project][:name],
    :description => params[:project][:description])
    @myproject.save

    redirect_to projects_path(@my_project)
  end
end
