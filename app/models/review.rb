class Review < ApplicationRecord
  # belongs_to :surfboard_id # needs to examine

  belongs_to :surfboard

  validates :comment, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
