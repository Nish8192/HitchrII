class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.references :driver, foreign_key: true
      t.references :passengers, foreign_key: true
      t.string :dStreet
      t.string :dCity
      t.string :dState
      t.integer :dZip
      t.string :aStreet
      t.string :aCity
      t.string :aState
      t.integer :aZip
      t.datetime :depDate
      t.time :duration
      t.datetime :expectedArr
      t.float :price
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
