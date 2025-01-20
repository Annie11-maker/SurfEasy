class Surfboard < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :size, presence: true
  validates :color, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
