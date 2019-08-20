class ReservationsController < ApplicationController
  before_action :set_arcade, only: %i[new create]
  before_action :set_reservation, only: %i[show]

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
    @reservation.user = current_user
    @reservation.arcade = @arcade

    if @reservation.save
      redirect_to @reservation
      #reservation_path(@reservation)
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def set_arcade
    @arcade = Arcade.find(params[:arcade_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:day)
  end
end
