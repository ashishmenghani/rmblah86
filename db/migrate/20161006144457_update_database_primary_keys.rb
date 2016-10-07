class UpdateDatabasePrimaryKeys < ActiveRecord::Migration[5.0]
  def change
     execute %Q{ ALTER TABLE "firms" DROP COLUMN id; }
     execute %Q{ ALTER TABLE "users" DROP COLUMN id; }
     execute %Q{ ALTER TABLE "groups" DROP COLUMN id; }
     execute %Q{ ALTER TABLE "broadcast_lists" DROP COLUMN id; } 
     execute %Q{ ALTER TABLE "firms" ADD PRIMARY KEY ("firm_number"); }
     execute %Q{ ALTER TABLE "users" ADD PRIMARY KEY ("user_id"); }
     execute %Q{ ALTER TABLE "groups" ADD PRIMARY KEY ("group_id"); }
     execute %Q{ ALTER TABLE "broadcast_lists" ADD PRIMARY KEY ("list_id"); }
  end
end
