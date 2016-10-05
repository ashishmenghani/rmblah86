class CreateBroadcastLists < ActiveRecord::Migration[5.0]
  def change
    create_table :broadcast_lists do |t|
      t.integer :list_id
      t.string :list_name
      t.string :owner_jid

      t.timestamps
    end
  end
end
