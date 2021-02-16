class CreateChains < ActiveRecord::Migration[6.0]
  def change
    create_table :chains do |t|
      t.string :name
      t.string :shortname
      t.string :address
      t.string :contact_person
      t.string :contacts
      t.string :notes

      t.timestamps
    end
  end
end
