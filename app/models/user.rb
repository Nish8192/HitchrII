class User < ApplicationRecord
    has_secure_password
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    PASSWORD_VALIDATOR = /(?=.*[A-Z])(?=.*\d)/
    validates :f_name, :l_name, :email, presence: true
    validates :email, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX}
    before_create :password, :password_confirmation, length: {minimum: 8}, format: {with: PASSWORD_VALIDATOR}
    validates :street, :city, :state, :zipCode, :phone, :bday, :gender, presence:true
    validates :zipCode, length: {is: 5}, numericality: true
    validates :zipCode, numericality: {:greater_than => 0, message: "Zip Code Must be a positive number!"}
    has_many :trips
    has_many :cars, dependent: :destroy
    has_many :journeys, through: :trips, source: :trip_info

    validate :isOldEnough

    def isOldEnough
        validDate = Date.today - 18.years
        if bday.to_date + 18.years > Date.today
            errors.add(:bday, "must be before #{validDate} to join!!")
        end
    end
end
