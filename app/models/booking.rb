class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :capsule

  validates :period_start, :period_end, :status, :user, :capsule, presence: true

  enum status: {
    pending: 1,
    accepted: 2,
    declined: 3
  }
end
