class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :driver
      t.integer :passengers
      t.integer :trip_info

      t.timestamps
    end
  end
end
