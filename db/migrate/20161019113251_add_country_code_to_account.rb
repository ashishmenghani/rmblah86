class AddCountryCodeToAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :country_code, :string
  end
end
