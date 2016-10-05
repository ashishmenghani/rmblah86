class CreateCurrentChats < ActiveRecord::Migration[5.0]
  def change
    create_table :current_chats do |t|
      t.string :jid_from
      t.string :jid_to

      t.timestamps
    end
  end
end
