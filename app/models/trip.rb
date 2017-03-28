class Trip < ApplicationRecord
  belongs_to :driver
  belongs_to :passengers
  belongs_to :car
end
