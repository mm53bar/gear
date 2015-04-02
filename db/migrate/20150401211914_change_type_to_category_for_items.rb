class ChangeTypeToCategoryForItems < ActiveRecord::Migration
  def change
    remove_reference :items, :type, index: true, foreign_key: true
    add_reference :items, :category, index: true, foreign_key: true
  end
end
