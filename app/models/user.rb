class User < ApplicationRecord
  has_many :tools
  has_many :bookings

  validates :name, presence: true
  validates :email, presence: true
  validates :address, presence: true
end
