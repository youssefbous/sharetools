class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_attachment :photo

  validates :title, presence: true
  validates :caracteristics, presence: true
  validates :description, presence: true
end
