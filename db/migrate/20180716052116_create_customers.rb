class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :location
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
