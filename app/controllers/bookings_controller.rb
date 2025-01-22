class BookingsController < ApplicationController
  
  def index
    @bookings = Booking.all
  end

  def show
  end

  def create
  end

  def new
    @surfboard = Surfboard.new
  end

  def destroy
  end
end

# class CategoriesController < ApplicationController
#   before_action :set_category, only: [:show, :destroy]

#   def index
#     @categories = Category.all
#   end

#   def show
#     @bookmark = Bookmark.new
#   end

#   def new
#     @category = Category.new
#   end

#   def create
#     @category = Category.new(category_params)
#     if @category.save
#       redirect_to category_path(@category)
#     else
#       render :new, status: :unprocessable_entity
#     end
#   end

#   def destroy
#     @category.destroy
#     redirect_to categories_path, status: :see_other
#   end

#   private

#   def set_category
#     @category = Category.find(params[:id])
#   end

#   def category_params
#     params.require(:category).permit(:name, :photo)
#   end
# end
