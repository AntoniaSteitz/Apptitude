class SkillsController < ApplicationController
  add_flash_types :notice, :error, :success
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    if @skill.save
      redirect_to skill_path(@skill)
      # , flash[:notice] = "Your profile has been updated."
      # notice: "Successfully booked!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :description, :category, :photo)
  end
end
