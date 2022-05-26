class Capsule < ApplicationRecord
  validates :name, :price, :number, :user_id, presence: true

  # Cloudinary necessity
  # one photo:
  # has_one_attached :photo
  # multiple photos:
  has_many_attached :photos
  has_many :bookings, dependent: :destroy

  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search_by_name_description_number,
                  against: %i[name description number],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
end
