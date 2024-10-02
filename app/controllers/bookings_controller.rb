class BookingsController < ApplicationController
  def new
    @booking = Booking.new

    @flight = Flight.find(params[:flight_id])

    num_passengers = params[:passengers].to_i

    num_passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.passengers.build if @booking.passengers.empty?

    if @booking.save
      redirect_to @booking, notice: 'Booking Successful'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[id name email])
  end
end
