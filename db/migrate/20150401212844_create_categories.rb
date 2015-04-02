class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.belongs_to :section, index: true, foreign_key: true
      t.boolean :is_default_for_trip, null: false, default: false
      t.boolean :is_mandatory, null: false, default: false

      t.timestamps null: false
    end
  end
end
