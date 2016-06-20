module Api
  module V1
    class CurrentusersController < ApplicationController
      def index
        render json: current_user, include: ['arts', 'spaces']
      end
    end
  end
end

