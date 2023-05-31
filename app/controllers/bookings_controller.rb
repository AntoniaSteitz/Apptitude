class BookingsController < ApplicationController
  def new
    # raise
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new(booking_params)
    @booking.skill = @skill
    @booking.user = current_user
    # raise
    if @booking.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
