class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render :json => @projects
  end

  def show
    @project = Project.find(params[:id])
    render :json => @project
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      render :json => @project
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      render :text => "Success"
    end
  end 

  def update
    @project = Project.find(params[:id])
    @project[:name] = params[:project][:name]
    @project[:sector] = params[:project][:sector]
    @project[:sub_sector] = params[:project][:sub_sector]
    @project[:date_created] = params[:date_created][:]
    if @project.save
      render :json => @project
    end
  end
end
