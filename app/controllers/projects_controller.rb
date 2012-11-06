class ProjectsController < ApplicationController

  before_filter :preload_engineer

  def index
  	@projects = @engineer.projects
  end

  def new
  	@project = @engineer.projects.build
  end

  def create
    if @project = @engineer.projects.create(params[:project])
      redirect_to engineer_projects_path, notice: "Project added!"
    else
      render action::new
    end
  end

  def update
    @project = @engineer.projects.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to engineer_projects_path, notice: "Project successfully updated."
    else
      render :edit, notice: "Error updating the project"
    end
  end

  def edit
    @project = @engineer.projects.find(params[:id])
  end

  def show
  end

  def preload_engineer
    begin
      @engineer = Engineer.find(params[:engineer_id])
    rescue ActiveRecord::RecordNotFound
      not_authenticated && return
    end
  end

  def destroy
    @project = @engineer.projects.find(params[:id])
    @project.destroy
    
    redirect_to engineer_projects_path, notice: "Project deleted."
  end

end