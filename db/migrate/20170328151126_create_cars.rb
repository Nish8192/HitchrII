class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.references :owner, foreign_key: true
      t.string :make
      t.string :model
      t.integer :year
      t.string :trim
      t.string :style
      t.string :VIN
      t.integer :seats
      t.integer :mileage
      t.string :color

      t.timestamps
    end
  end
end
