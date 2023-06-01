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
      # booking_path(params[:id])
      # , notice: "Success!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    # raise
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      # redirect_to # up to you...
      redirect_to dashboard_path
    else
      # render # where was the booking update form?
      render :new, status: :unprocessable_entity
    end
  end

  def booking_params
    params.require(:booking).permit(:date, :status)
  end
end
