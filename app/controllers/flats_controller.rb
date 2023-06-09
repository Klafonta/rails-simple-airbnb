class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create

    @flat = Flat.new(flat_params)

    @flat.save

    # if @flat.save
    redirect_to flats_path
    # else
    #   render 'flats/new', status: :unprocessable_entity
    # end
  end

  private

  def flat_params
    params.require(:flat).permit(
      :name,
      :address,
      :description,
      :price_per_night,
      :number_of_guests
    )
  end
end
