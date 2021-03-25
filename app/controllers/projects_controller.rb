class ProjectsController < ApplicationController
  def index
    @projects = Project.all().order(:project)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(post_params)
    puts @project
    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  private
  def post_params
    params.require(:project).permit(:client, :project, :project_code)
  end
end
