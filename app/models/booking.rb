class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  validates_uniqueness_of :user_id, :scope => [:skill_id]

  def pending?
    status == 'pending'
  end
  
end
