class Car < ApplicationRecord
  belongs_to :user
  has_one :trip
  validates :make, :model, :year, :trim, :style, :seats, :mileage, :color, presence: true
end
