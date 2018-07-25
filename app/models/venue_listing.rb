class VenueListing < ApplicationRecord
include PgSearch
pg_search_scope :search, against: [:venue_name, :location]


  belongs_to :company
  geocoded_by :location
after_validation :geocode, if :location_changed?

  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :venue_name, presence: true
  validates :description, presence: true
  validates :attendees, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :hours, presence: true
end
end
