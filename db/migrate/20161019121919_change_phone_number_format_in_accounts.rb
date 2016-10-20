class ChangePhoneNumberFormatInAccounts < ActiveRecord::Migration[5.0]
  
  def up
    change_column :accounts, :phone_number, :integer
  end

  def down
    change_column :accounts, :phone_number, :string
  end
 
end
