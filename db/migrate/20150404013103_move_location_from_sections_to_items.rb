class MoveLocationFromSectionsToItems < ActiveRecord::Migration
  def change
    remove_column :sections, :location
    add_column :items, :location, :integer, default: 0, null: false
  end
end
