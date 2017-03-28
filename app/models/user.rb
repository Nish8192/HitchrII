class User < ApplicationRecord
  belongs_to :cars
  has_secure_password
end
