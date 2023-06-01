class Skill < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_name_description_and_user_first_name,
    against: [:name, :description, :category],
    associated_against: {
      user: [:first_name]
    },
    using: {
      tsearch: { prefix: true }
    }

end
