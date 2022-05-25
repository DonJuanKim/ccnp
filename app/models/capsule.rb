class Capsule < ApplicationRecord
  validates :name, :price, :number, :user_id, presence: true

  # Cloudinary necessity
  # one photo:
  # has_one_attached :photo
  # multiple photos:
  has_many_attached :photos
  has_many :bookings

  belongs_to :user
end
