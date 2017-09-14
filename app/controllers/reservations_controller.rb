class ReservationsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.restaurant_id = @restaurant.id
    @reservation.user_id = current_user.id

    if @reservation.save

      redirect_to restaurant_reservation_url(@restaurant, @reservation)
    else
      render 'new'
    end
  end


  def show
    @reservation = Reservation.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])

  end
  private
    def reservation_params
      params.require(:reservation).permit(:partysize, :time, :day)
    end
end
