module Api
  module V1
    class SpacesController < ApplicationController
      def index
        if params[:page]
          spaces = Space.page(page_params[:number]).per(page_params[:size])
        else
          spaces = Space.all
        end
        render json: spaces
      end

      private

      def page_params
        params.require(:page).permit([:size, :number])
      end
    end
  end
end

