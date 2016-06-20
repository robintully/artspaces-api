class UsersController < ApplicationController
  def current
    render json: current_user, include: ['arts', 'spaces']
  end
end
