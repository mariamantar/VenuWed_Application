class AddFieldsToVenueListing < ActiveRecord::Migration[5.2]
  def change
    add_column :venue_listings, :latitude, :float
    add_column :venue_listings, :longitude, :float
  end
end
