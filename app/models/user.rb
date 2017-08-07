class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tools
  has_many :bookings

  validates :name, presence: true
  validates :email, presence: true
  validates :address, presence: true
end
