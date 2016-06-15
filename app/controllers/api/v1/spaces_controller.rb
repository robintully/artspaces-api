module Api
  module V1
    class SpacesController < ApplicationController
      def index
        render json: Space.all
      end
    end
  end
end

