class CreateCustomerOfChains < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_of_chains do |t|
      t.integer :customer_id
      t.integer :chain_id
      t.boolean :isregistered
      t.string :customer_of_chain_identity
      t.string :customer_of_chain_data
      t.binary :customer_card

      t.timestamps
    end
  end
end
