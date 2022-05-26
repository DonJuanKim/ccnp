class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :capsule

  validates :period_start, :period_end, :status, :user, :capsule, presence: true

  enum status: {
    pending: 1,
    accepted: 2,
    declined: 3
  }

  def accept!
    update_attribute(:status, 2)
  end

  def decline!
    update_attribute(:status, 3)
  end
end
