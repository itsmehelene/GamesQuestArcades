class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[index, new, show, create]

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def show
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to user_reservation_path
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to user_reservation_path
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:user_id])
  end

  def reservation_params
    params.require(:reservation).permit(:day, :user_id)
  end
end
