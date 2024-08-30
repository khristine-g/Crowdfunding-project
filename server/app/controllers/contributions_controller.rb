class ContributionsController < ApplicationController
    require_dependency 'sms_sender'
  
    before_action :authenticate_user!
  
    def create
      @project = Project.find(params[:project_id])
      @contribution = @project.contributions.new(contribution_params)
      @contribution.user = current_user
  
      if @contribution.save
        # Update the project's amount raised
        @project.update(amount_raised: @project.amount_raised + @contribution.amount)
        
        # Send the SMS
        SMSSender.send_sms(@contribution.phone_number, "Hi, thank you for your contribution of $#{@contribution.amount}.")
  
        render json: @contribution, status: :created
      else
        render json: @contribution.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def contribution_params
      params.require(:contribution).permit(:amount, :phone_number)
    end
  end
  
  # class ContributionsController < ApplicationController
  #   before_action :authenticate_user!
  
  #   def create
  #     @project = Project.find(params[:project_id])
  #     @contribution = @project.contributions.new(contribution_params)
  #     @contribution.user = current_user
  
  #     if @contribution.save
  #       # Update the project's amount raised
  #       @project.update(amount_raised: @project.amount_raised + @contribution.amount)
  #       render json: @contribution, status: :created
  #     else
  #       render json: @contribution.errors, status: :unprocessable_entity
  #     end
  #   end
  
  #   private
  
  #   def contribution_params
  #     params.require(:contribution).permit(:amount, :phone_number)
  #   end
  # end
  