class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.references :driver, foreign_key: true
      t.references :passengers, foreign_key: true
      t.float :depLat
      t.float :depLong
      t.float :arrLat
      t.float :arrLong
      t.datetime :depDate
      t.time :duration
      t.datetime :expectedArr
      t.float :price
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
