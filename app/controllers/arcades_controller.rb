class ArcadesController < ApplicationController
  before_action :set_arcade, only: [:show, :edit, :update, :destroy]

  def index
    @arcades = Arcade.all
  end

  def show
    @arcade = Arcade.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id]) #needs to be an instance variable
    @arcade.user = @user
    @arcade = Arcade.new
  end

  def create
    @arcade = Arcade.new(arcades_params)
    if @arcade.save
      redirect_to @arcade, notice: 'Arcade created.'
    else
      render :new
    end
  end

  def destroy
    @arcade = Arcade.find(params[:id])
    @arcade.destroy
    redirect_to arcades_path, notice: 'Arcade was successfully destroyed.'
  end

  def edit
  end

  def update
    @arcade.update(arcades_params)

    redirect_to arcade_path(@arcade)
  end

  private

  def set_arcade
    @arcade = Arcade.find(params[:id])
  end

  def arcades_params
    params.require(:arcade).permit(:name, :adress, :city, :zip_code)
  end
end
