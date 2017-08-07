class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :caracteristics, presence: true
  validates :description, presence: true
  validates :user, presence: true
end
