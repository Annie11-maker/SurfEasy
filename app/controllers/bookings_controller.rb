class BookingsController < ApplicationController

  def index
    @bookings = Booking.all

  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.save
    redirect_to bookings_path
  end

  def new
    @booking = Booking.new
  end

  def destroy
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
