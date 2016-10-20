class AddIndexesToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_index :accounts, :jid
    add_index :accounts, :phone_number
    add_index :accounts, :email
  end
end
