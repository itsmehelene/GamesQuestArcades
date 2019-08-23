class Review < ApplicationRecord
  belongs_to :arcade
  validates :content, length: { minimum: 5 }
end
