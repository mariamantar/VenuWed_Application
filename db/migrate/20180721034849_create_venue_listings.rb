class CreateVenueListings < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_listings do |t|
      t.string :venue_name
      t.text :description
      t.integer :attendees
      t.string :location
      t.float :price
      t.float :hours
      t.string :image
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
