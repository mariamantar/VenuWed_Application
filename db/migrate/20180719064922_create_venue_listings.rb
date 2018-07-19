class CreateVenueListings < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_listings do |t|
      t.string :image
      t.text :description
      t.float :cost
      t.float :date
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
