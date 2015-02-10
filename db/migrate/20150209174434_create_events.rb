class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :description
      t.date :date
      t.integer :requires_id

      t.belongs_to :location, index: true

      t.timestamps null: false
    end
  end
end
