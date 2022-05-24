class Capsule < ApplicationRecord
  validates :name, :price, :number, :user_id, presence: true

  belongs_to :user
end
