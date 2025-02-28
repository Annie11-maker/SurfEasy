class SurfboardsController < ApplicationController
  before_action :set_surfboard, only: [:destroy]
  def index
    @surfboards = Surfboard.all
    @markers = @surfboards.geocoded.map do |surfboard|
      {
        lat: surfboard.latitude,
        lng: surfboard.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {surfboard: surfboard})
      }
    end
  end

  def show
    if !current_user
      redirect_to new_user_registration_path
      return
    end
    @surfboard = Surfboard.find(params[:id])
    @review = Review.new
    @favorite = current_user.favorites.new
    @surfboards = Surfboard.all
    @markers = @surfboards.geocoded.map do |surfboard|
      {
        lat: surfboard.latitude,
        lng: surfboard.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {surfboard: surfboard})
      }
    end
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
    @surfboard.destroy
    redirect_to surfboards_path, status: :see_other
  end

  private
  def surfboard_params
    params.require(:surfboard).permit(:name, :description, :color, :size, :price, :photo, :address)
  end
  def set_surfboard
    @surfboard = Surfboard.find(params[:id])
  end
end
