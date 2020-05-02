class LoginController < ApplicationController
  def login
    login_user = User.find_by(name:params[:name], password:params[:password])
    if login_user != nil
      render json: {token: login_user.token}, status: :ok
    else
      render json: {message: "Failed to find the requested user"}, status: :unauthorized
    end
  end
end
