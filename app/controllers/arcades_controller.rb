class ArcadesController < ApplicationController
  before_action :set_arcade, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @arcades = policy_scope(Arcade).order(created_at: :desc)
    @arcades = Arcade.geocoded

    if params[:q].present?
      @arcades = @arcades.search(params[:q])
    end

    if params[:max_price].present?
      @arcades = @arcades.where('price < ?', params[:max_price])
    end

    @markers = @arcades.map do |arcade|
      {
        lat: arcade.latitude,
        lng: arcade.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { arcade: arcade }),
        image_url: helpers.asset_url('packman.png')
      }
    end
  end

  def new
    @arcade = Arcade.new
    @arcade.owner = current_user
    authorize @arcade
  end

  def show
  end

  def create
    @arcade = Arcade.new(arcades_params)
    @arcade.owner = current_user
    authorize @arcade
    if @arcade.save
      redirect_to arcades_path, notice: 'Arcade created.'
    else
      render :new
    end
  end

  def destroy
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
    authorize @arcade
  end

  def arcades_params
    params.require(:arcade).permit(:name, :address, :price, :photo)
  end
end
