class CreateCustomerAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_accounts do |t|
      t.integer :chain_id
      t.string :customer_account_data
      t.string :customer_account_scol

      t.timestamps
    end
  end
end
