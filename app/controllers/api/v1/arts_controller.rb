module Api
  module V1
    class ArtsController < ApplicationController
      def index
        if params[:page]
          arts = Art.page(page_params[:number]).per(page_params[:size])
        else
          arts = Art.includes(:user, :spaces)
        end
          render json: arts, include: ['user', 'spaces']
      end

      def create
        Art.create(name: art_params[:attributes][:name], description: art_params[:attributes][:description], img_link: art_params[:attributes]["img-link"], user: current_user)
      end

      private
      def art_params
        params.require(:data).permit(:attributes => [:name, :description, :"img-link"])
      end

      def page_params
        params.require(:page).permit([:size, :number])
      end
    end
  end
end

