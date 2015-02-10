class ChangeLocationIdInEvents < ActiveRecord::Migration
  def change
    change_column :events, :location_id, :integer, null: false
  end
end
