module Api
  module V1
    class ArtsController < ApplicationController
      skip_before_action :authenticate, only: [:index]
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

      def update
        art = Art.find_by(id: edit_params[:id])
        art.update(name: edit_params[:attributes][:name], description: edit_params[:attributes][:description], img_link: edit_params[:attributes]["img-link"])
      end

      def destroy
        Art.find(params[:id]).destroy
      end

      private
      def art_params
        params.require(:data).permit(:attributes => [:name, :description, :"img-link"])
      end

      def page_params
        params.require(:page).permit([:size, :number])
      end

      def edit_params
        params.require(:data).permit(:id, :attributes => [:name, :description, :"img-link"])
      end
    end
  end
end

