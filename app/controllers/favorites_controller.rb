class FavoritesController < ApplicationController
  before_action :authenticate_user!
  def index
    @favorites = current_user.favorites.includes(:surfboard)
  end

  def create
    @surfboard = Surfboard.find(params[:surfboard_id])
    @favorite = current_user.favorites.new(surfboard: @surfboard)
    @favorite.surfboard = @surfboard
    if @favorite.save
      redirect_to surfboard_path(@surfboard), notice: 'Surfboard added to favorites!'
    else
      redirect_to surfboard_path(@surfboard), alert: 'Unable to add surfboard to favorites.'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path, notice: 'Surfboard removed from favorites.'
  end

end
