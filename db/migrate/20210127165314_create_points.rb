class CreatePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :points do |t|
      t.integer :chain_id
      t.integer :point_location_id
      t.integer :point_type_id
      t.string :name
      t.string :code
      t.string :address
      t.string :gps
      t.string :qr

      t.timestamps
    end
  end
end
