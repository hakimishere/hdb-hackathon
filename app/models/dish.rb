class Dish < ApplicationRecord
  belongs_to :category
  has_many :ratings
  has_many :bookings
  has_many :users, :through => :bookings
  # belongs_to :user
end
