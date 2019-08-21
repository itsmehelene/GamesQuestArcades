class Arcade < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :owner, class_name: 'User'
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true
  validates :photo, presence: true
end
