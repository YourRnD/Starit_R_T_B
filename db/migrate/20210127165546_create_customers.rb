class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :deviceid
      t.string :device_name
      t.boolean :isregistered
      t.string :email
      t.string :tel
      t.string :name
      t.string :password
      
      t.timestamps
    end
  end
end
