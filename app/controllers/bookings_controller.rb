class BookingsController < ApplicationController
  def index
    @surfboards = Surfboard.where(user_id: current_user.id)
    @bookings = current_user.bookings
    @booking_requests = Booking.where(surfboard: @surfboards, status: 'requested')
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @surfboard = Surfboard.find(params[:surfboard_id])
    @booking.user = current_user
    @booking.surfboard = @surfboard
    @booking.status = "requested"
    if @booking.save
      redirect_to booking_path(@booking)
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

  def accept
    @booking_request = Booking.find(params[:id]) # Find the booking by its ID
    @booking_request.update(status: 'confirmed')
    redirect_to bookings_path, notice: "Booking request accepted successfully!"
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :surfboard_id)
  end
end
