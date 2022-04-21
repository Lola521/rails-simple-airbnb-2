class FlatsController < ApplicationController
  # before_action :set_flat, only: [:]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.requires(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
