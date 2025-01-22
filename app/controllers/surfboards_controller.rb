class SurfboardsController < ApplicationController
  def index
    @surfboards = Surfboard.all
  end

  def show
    @surfboard = Surfboard.find(params[:id])
  end

  def edit
  end

  def create
    @surfboard = Surfboard.new(surfboard_params)
    # @surfboard.booking = @booking
    @surfboard.user = current_user
    if @surfboard.save!
      redirect_to surfboards_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @surfboard = Surfboard.new
  end

  def update
  end

  def destroy
  end

  private
  def surfboard_params
    params.require(:surfboard).permit(:name, :description, :color, :size, :price, :photo)
  end
  def set_surfboard
    @surfboard = Surfboard.find(params[:id])
  end
end
