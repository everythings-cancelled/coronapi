class CreateSnapshots < ActiveRecord::Migration[5.2]
  def change
    create_table :snapshots do |t|
      t.string :location
      t.string :alpa2_code
      t.float :latitude
      t.float :longitude
      t.integer :deaths
      t.integer :confirmed
      t.ingeger :recovered

      t.timestamps
    end
  end
end
