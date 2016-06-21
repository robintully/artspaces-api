module Api
  module V1
    class SpacesController < ApplicationController
      skip_before_action :authenticate, only: [:index]
      def index
        if params[:page]
          spaces = Space.page(page_params[:number]).per(page_params[:size])
        else
          spaces = Space.all
        end
        render json: spaces
      end

      def create
        Space.create(name: space_params[:attributes][:name], location: space_params[:attributes][:location], description: space_params[:attributes][:description], img_link: space_params[:attributes]["img-link"], user: current_user)
      end

      def update
        space = Space.find_by(id: edit_params[:id])
        space.update(name: edit_params[:attributes][:name], location: edit_params[:attributes][:location], description: edit_params[:attributes][:description], img_link: edit_params[:attributes]["img-link"])
      end

      private

      def space_params
        params.require(:data).permit(:attributes => [:name, :location, :description, :"img-link"])
      end

      def page_params
        params.require(:page).permit([:size, :number])
      end

      def edit_params
        params.require(:data).permit(:id, :attributes => [:name, :description, :location, :"img-link"])
      end
    end
  end
end

