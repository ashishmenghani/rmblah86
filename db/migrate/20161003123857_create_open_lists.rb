class CreateOpenLists < ActiveRecord::Migration[5.0]
  def change
    create_table :open_lists do |t|
      t.string :jid
      t.integer :list_id

      t.timestamps
    end
  end
end
