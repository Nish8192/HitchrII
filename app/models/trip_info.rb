class TripInfo < ApplicationRecord
  has_many :trips
  has_many :passengers, through: :trips, source: :user
  validates :dStreet, :dCity, :dState, :dZip, :aStreet, :aCity, :aState, :aZip, :dDate, :aDate, :price, presence: true
  validates :aZip, :dZip, length: {is: 5}, numericality: true
  validates :aZip, :dZip, numericality: {:greater_than => 0, message: "Zip Code Must be a positive number!"}
  validate :validDates
  def validDates
      if dDate < Date.today
          errors.add(:dDate, "must be in the future!")
      end
      if aDate < dDate
          errors.add(:aDate, "must be after your departure date!")
      end
  end


end
