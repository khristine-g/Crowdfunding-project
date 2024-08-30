# app/controllers/authentication_controller.rb
class AuthenticationController < ApplicationController
    # POST /login
    def login
      user = User.find_by(email: params[:email])
      
      if user&.authenticate(params[:password])
        token = JsonWebToken.encode(user_id: user.id)
        render json: { token: token, user: user }, status: :ok
      else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    # POST /signup
    def signup
      user = User.new(user_params)
      
      if user.save
        # Generate JWT token
        token = JsonWebToken.encode(user_id: user.id)
        
        render json: { token: token, user: user }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
  end
  