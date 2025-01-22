class Surfboard < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  has_many :reviews

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :size, presence: true
  validates :color, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
