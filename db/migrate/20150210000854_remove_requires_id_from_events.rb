class RemoveRequiresIdFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :requires_id, :integer
  end
end
