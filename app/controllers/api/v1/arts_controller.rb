module Api
  module V1
    class ArtsController < ApplicationController
      def index
        render json: Art.includes(:user, :spaces), include: ['user', 'spaces']
      end

      def create
        Art.create(name: art_params[:attributes][:name], description: art_params[:attributes][:description], img_link: art_params[:attributes]["img-link"], user: current_user)
      end

      private
      def art_params
        params.require(:data).permit(:attributes => [:name, :description, :"img-link"])
      end
    end
  end
end

