class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites.includes(:surfboard)
  end

  def create
    @surfboard = Surfboard.find(params[:surfboard_id])
    @favorite = Favorite.new
    @favorite.surfboard = @surfboard
    if @favorite.save
      redirect_to surfboard_path(@surfboard)
    else
      render 'surfboards/show', status: :unprocessable_entity
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorite_path, status: :see_other
  end
end
