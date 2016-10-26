class AuthenticationsController < ApplicationController
  def register
    user = User.new(user_params)
    if user.save
      render json: user, status: :ok
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      render json: user, status: :ok
    else
      render json: { errors: ["Invalid login credentials."]}, status: 401
    end
  end

  private
  def user_params
    hash = {}
    hash.merge! params.slice(:username, :first_name, :last_name, :email, :password, :password_confirmation)
    hash
  end
end
