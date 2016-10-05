class CreateFirms < ActiveRecord::Migration[5.0]
  def change
    create_table :firms do |t|
      t.integer :firm_number
      t.string :firm_full_name
      t.string :firm_short_name
      t.string :firm_domain
      t.text :firm_address

      t.timestamps
    end
  end
end
