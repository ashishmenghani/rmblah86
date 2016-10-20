class AddPhoneNumberToAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :phone_number, :integer
  end
end
