class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @airports = Airport.order(:airport_code).map { |a| [a.airport_code, a.id] }

    @flights = @flights.where(departure_id: flight_params[:departure_id]) if flight_params[:departure_id].present?
    @flights = @flights.where(arrival_id: flight_params[:arrival_id]) if flight_params[:arrival_id].present?
    @flights = @flights.where('start >= ?', flight_params[:start]) if flight_params[:start].present?

  end

  def new
    @flight = Flight.new
  end

  private

  def flight_params
    params.permit(:arrival_id, :departure_id, :start, :passengers)
    # departure_attributes: %i[id airport_code name],
    # arrival_attributes: %i[id airport_code name])
  end
end
