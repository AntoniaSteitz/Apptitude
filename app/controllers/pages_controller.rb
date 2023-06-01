class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @bookings = Booking.where(user_id: @user.id)
    @skills = Skill.where(user_id: @user.id)
    # @skill.user = current_user
    # @my_booking = Booking.where(skill_id: @skills)
    # @booking_requests = current_user.skills.
    # @booking_requests = Booking.where(current_user.skills.pluck(:id))
    @booking_requests = Booking.joins(:skill).where(skills: { user_id: current_user.id })
  end
end
