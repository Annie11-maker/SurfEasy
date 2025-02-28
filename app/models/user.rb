class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :surfboards
  has_many :bookings
  has_many :favorites, dependent: :destroy
  has_many :favorite_surfboards, through: :favorites, source: :surfboard
  has_many :booking_requests, -> { where(status: :requested) }, class_name: 'Booking'


  validates :user_name, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
