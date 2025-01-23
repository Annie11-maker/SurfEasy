class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @surfboard= Surfboard.find(params[:surfboard_id])
    @booking.user = current_user
    @booking.surfboard = @surfboard
    @booking.status = "pending"

    if @booking.save

      redirect_to booking_path(@booking)
      # raise
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @booking = Booking.new
    @surfboard = Surfboard.find(params[:surfboard_id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private
  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :surfboard_id)
  end
end



#   def create
#     @bookmark = Bookmark.new(bookmark_params)
#     @bookmark.category = @category
#     if @bookmark.save
#       redirect_to category_path(@category)
#     else
#       render :new, status: :unprocessable_entity
#     end
#   end

#   def destroy
#     @bookmark.destroy
#     redirect_to category_path(@bookmark.category), status: :see_other
#   end

#   private

#   def bookmark_params
#     params.require(:bookmark).permit(:comment, :recipe_id)
#   end

#   def set_bookmark
#     @bookmark = Bookmark.find(params[:id])
#   end

#   def set_category
#     @category = Category.find(params[:category_id])
#   end
# end
