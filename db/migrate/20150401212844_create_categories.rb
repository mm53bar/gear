class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.belongs_to :section, index: true, foreign_key: true
      t.boolean :is_default_for_trip
      t.boolean :is_mandatory

      t.timestamps null: false
    end
  end
end
