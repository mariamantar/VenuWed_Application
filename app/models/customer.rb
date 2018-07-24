class Customer < ApplicationRecord
  belongs_to :user
  mount_uploader :image, VenueImageUploader
  validates :image, presence: true




end
