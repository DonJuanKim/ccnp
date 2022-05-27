class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @capsule = find_capsule
    @booking.capsule = @capsule
    @booking.user = current_user
    authorize @booking
    set_booking_period
    booked_already = false
    @capsule.bookings.each do |existing_booking|
      if ((@booking.period_start >= existing_booking.period_start && @booking.period_start <= existing_booking.period_end) || (@booking.period_end >= existing_booking.period_start && @booking.period_end <= existing_booking.period_end)) && existing_booking.accepted?
        booked_already = true
      end
    end
    if booked_already == true
      flash[:alert] = "Sorry, already booked!"
      redirect_to capsule_path(@capsule), status: :unprocessable_entity
    elsif @booking.save
      redirect_to dashboard_path
    else
      flash[:alert] = "Sorry, booking could not be processed!"
      redirect_to capsule_path(@capsule)
    end
  end

  def update
    @booking = Booking.find(capsule_params)
    if @capsule.save
      redirect_to capsule_path(@capsule)
    else
      render :new
    end
  end

  def set_booking_period
    @booking.period_start = params[:booking][:period_start].to_date
    @booking.period_end = params[:booking][:period_end].to_date
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.accept!
    authorize @booking
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.decline!
    authorize @booking
    redirect_to dashboard_path
  end

  private

  def find_capsule
    Capsule.find(params[:capsule_id])
  end

  def capsule_params
    params.require(:booking).permit(:period_start, :period_end, :user_id, :capsule_id, :status)
  end
end
