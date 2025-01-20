class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :surfboard

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :status, presence: true
end
