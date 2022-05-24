class CapsulesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # @capsules = Capsule.all
    @capsules = policy_scope(Capsule)
  end

  def show
    @capsule = Capsule.find(params[:id])
    authorize @capsule
  end

  def new
    @capsule = Capsule.new
    authorize @capsule
  end

  def create
    # TODO: method body, pundit
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
