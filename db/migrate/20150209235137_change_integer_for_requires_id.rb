class ChangeIntegerForRequiresId < ActiveRecord::Migration
 def change
   change_column :events, :requires_id, :boolean
 end
end
