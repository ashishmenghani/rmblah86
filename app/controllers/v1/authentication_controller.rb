module V1
class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request
    def authenticate
        command = AuthenticateUser.call(params[:email], params[:password], params[:phone_number])
        if command.success?
            render json: { auth_token: command.result }
        else
            render json: { error: command.errors }, status: :unauthorized
        end
    end 
end
end