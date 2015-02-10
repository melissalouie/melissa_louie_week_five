class AddRequiresIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :requires_id, :boolean
  end
end
