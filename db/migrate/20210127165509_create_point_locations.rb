class CreatePointLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :point_locations do |t|
      t.integer :chain_id 
      t.string :name
      t.string :code
      t.string :address
      t.string :gps

      t.timestamps
    end
  end
end
