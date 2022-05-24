class CapsulesController < ApplicationController
  def index
    @capsules = Capsule.all
  end

  def show
    @capsule = Capsule.find(params[:id])
  end

  def new
    @capsule = Capsule.new
  end

  def create
    raise
  end

  # TODO: implement capsule_params, do not forget :photo
  # should look something like this:
  # CAREFUL: possibly incomplete .permit parameter list
  #
  # for one photo
  # def capsule_params
  #   params.require(:capsule).permit(:name, :description, :price, :number, :photo)
  # end
  #
  # for multiple photos
  # def capsule_params
  #   params.require(:capsule).permit(:name, :description, :price, :number, photos: [])
  # end
end
