class Reservation < ApplicationRecord
  belongs_to :arcade
  belongs_to :user
end
