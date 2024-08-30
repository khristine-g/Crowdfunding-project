# app/controllers/projects_controller.rb
class ProjectsController < ApplicationController
    # Skip authentication for index and show actions
    # skip_before_action :authorize_request, only: [:index, :show]
  
    def index
      if params[:category_id].present?
        @projects = Project.where(category_id: params[:category_id])
      else
        @projects = Project.all
      end
      render json: @projects
    end
  
    def show
      @project = Project.find(params[:id])
      render json: @project
    end
  end
  
  