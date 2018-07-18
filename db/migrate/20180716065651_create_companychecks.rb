class CreateCompanychecks < ActiveRecord::Migration[5.2]
  def change
    create_table :companychecks do |t|
      t.boolean :iscompany
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
