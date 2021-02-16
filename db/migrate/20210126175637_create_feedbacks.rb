class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.integer :form_id
      t.integer :point_id
      t.integer :customer_id
      t.string :deviceid
      t.string :device_name
      t.string :gps
      t.string :qr
      t.string :rating
      t.string :notes

      t.timestamps
    end
  end
end
