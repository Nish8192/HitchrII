class Car < ApplicationRecord
  belongs_to :owner
  belongs_to :trip
  validates :make, :model, :year, :trim, :style, :seats, :mileage, :color, presence: true
end
