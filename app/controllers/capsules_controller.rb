class CapsulesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # @capsules = Capsule.all
    @capsules = policy_scope(Capsule)
  end

  def show
    @capsule = Capsule.find(params[:id])
    @booking = Booking.new
    authorize @capsule
    authorize @booking
  end

  def new
    @capsule = Capsule.new
    authorize @capsule
  end

  def create
    # TODO: method body, pundit
    @capsule = Capsule.new(capsule_params)
    @capsule.user = current_user
    authorize @capsule
    if @capsule.save
      redirect_to capsule_path(@capsule)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @capsule = Capsule.find(params[:id])
    @capsule.update(capsule_params)
    authorize @capsule
    redirect_to capsule_path(@capsule)
  end

  def destroy
    @capsule = Capsule.find(params[:id])
    authorize @capsule
    @capsule.destroy
    # raise
    redirect_to dashboard_path, status: :see_other
  end

  private

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
  def capsule_params
    params.require(:capsule).permit(:name, :description, :price, :number, photos: [])
  end
end
