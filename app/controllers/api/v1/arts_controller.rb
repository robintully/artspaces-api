module Api
  module V1
    class ArtsController < ApplicationController
      def index
        render json: Art.includes(:user, :spaces), include: ['user', 'spaces']
      end
    end
  end
end
