class CommentsController < ApplicationController
    before_action :set_project
    before_action :set_comment, only: [:destroy]
    before_action :authorize_user, only: [:destroy]
  
    def create
      @comment = @project.comments.build(comment_params.merge(user_id: current_user.id))
      
      if @comment.save
        render json: @comment.as_json.merge(contributor_name: current_user.username), status: :created
      else
        render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @comment.destroy
      head :no_content
    end
  
    private
  
    def set_project
      @project = Project.find(params[:project_id])
    end
  
    def set_comment
      @comment = @project.comments.find(params[:id])
    end
  
    def authorize_user
      if @comment.user_id != current_user.id
        render json: { error: 'Not authorized' }, status: :forbidden
      end
    end
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
  