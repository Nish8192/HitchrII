class Trip < ApplicationRecord
  belongs_to :driver
  has_many :passengers, through: :users
  has_one :car
  validates :dStreet, :dCity, :dState, :dZip, :aStreet, :aCity, :aState, :aZip, :depDate, :duration, :expectedArr, :price, presence: true
  validates :aZip, :dZip, length: {is: 5}, numericality: true, numericality: {:greater_than => 0, message: "Zip Code Must be a positive number!"}
  validate :validDates
  def validDates
      if depDate < Date.today
          errors.add(:depDate, "must be in the future!")
      end
      if arrDate < depDate
          errors.add(:arrDate, "must be after your departure date!")
      end
  end


end
