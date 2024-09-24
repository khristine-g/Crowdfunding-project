class SubmitProjectsController < ApplicationController
    # POST /submit_projects
    def create
      submit_project = SubmitProject.new(submit_project_params)
      
      if submit_project.save
        render json: { message: 'Project submitted successfully', submit_project: submit_project }, status: :created
      else
        render json: { errors: submit_project.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    # Strong parameters for project submission
    def submit_project_params
      params.require(:submit_project).permit(:name, :description, :contact_email)
    end
  end
  
