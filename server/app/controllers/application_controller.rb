class ApplicationController < ActionController::API

    def current_user
      return unless request.headers['Authorization'].present?
  
      token = request.headers['Authorization'].split(' ').last
      begin
        decoded_token = JWT.decode(token, Rails.application.secret_key_base, true, algorithm: 'HS256')
        user_id = decoded_token.first['user_id']
        @current_user ||= User.find(user_id) if user_id
      rescue JWT::DecodeError => e
        Rails.logger.debug "JWT Decode Error: #{e.message}"
        nil
      end
    end
  
    def authenticate_user!
      unless current_user
        render json: { error: 'Not Authorized' }, status: :unauthorized 
      end
    end
  end
  