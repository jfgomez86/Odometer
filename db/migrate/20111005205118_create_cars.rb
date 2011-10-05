class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :initial_odometer
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
