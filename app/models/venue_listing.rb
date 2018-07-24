class VenueListing < ApplicationRecord
  
  belongs_to :company

  geocoded_by :location
after_validation :geocode, if :location_changed?

  mount_uploader :image, ImageUploader
  validates :image, presence: true
end
end
