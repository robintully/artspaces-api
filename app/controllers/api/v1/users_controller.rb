module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate, only: [:create]

      def current
        render json: current_user, include: ['arts', 'spaces']
      end

      def create
        user = User.new(name: user_params[:attributes][:name], email: user_params[:attributes][:email], password: user_params[:attributes][:password], password_confirmation: user_params[:attributes]["password-confirmation"])
        if user.save
          binding.pry
          render json: {}, status: 200
        else
          binding.pry
          render json: ErrorSerializer.serialize(user.errors), status: 422
        end
      end

      private
      def user_params
        params.require(:data).permit(:attributes => [:name, :email, :password, "password-confirmation"])
      end
    end
  end
end
