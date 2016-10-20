class ChangePhoneNumberFormatInAccounts2 < ActiveRecord::Migration[5.0]
  def change
     change_column :accounts, :phone_number, :string
  end
end
