class ReservationsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.restaurant_id = @restaurant.id

    if @reservation.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  private
    def reservation_params
      params.require(:reservation).permit(:partysize, :time, :day)
    end
end
