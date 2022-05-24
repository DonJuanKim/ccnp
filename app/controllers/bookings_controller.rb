class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @capsule = Capsule.find(params[:capsule_id])
    @booking.capsule = @capsule
    @booking.user = current_user
    if @capsule.save
      redirect_to capsule_path
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(capsule_params)
    if @capsule.save
      redirect_to capsule_path
    else
      render :new
    end
  end

  private

  def capsule_params
    params.require(:booking).permit(:period_start, :period_end, :user_id, :capsule_id, :status)
  end
end
