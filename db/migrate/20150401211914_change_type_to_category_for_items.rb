class ChangeTypeToCategoryForItems < ActiveRecord::Migration
  def change
    remove_reference :items, :type
    add_reference :items, :category
  end
end
