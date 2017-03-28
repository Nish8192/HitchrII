class CreateTripInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_infos do |t|
      t.string :dStreet
      t.string :dCity
      t.string :dState
      t.integer :dZip
      t.string :aStreet
      t.string :aCity
      t.string :aState
      t.integer :aZip
      t.datetime :dDate
      t.datetime :aDate
      t.time :duration
      t.float :price

      t.timestamps
    end
  end
end
