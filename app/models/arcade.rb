class Arcade < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :reservations

  validates :name, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true, allow_blank: false, format: { with: /^[0-9]{5}$|[2][(A|B)]\d{3}$/, message: 'please enter valid zipcode'}
  validates :city, presence: true
end
