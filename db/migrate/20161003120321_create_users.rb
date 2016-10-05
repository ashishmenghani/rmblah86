class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.integer :firm_number
      t.string :first_name
      t.string :last_name
      t.string :short_name
      t.string :display_picture
      t.string :j_id

      t.timestamps
    end
  end
end
