class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name, null: false
      t.integer :location, default: 0, null: false

      t.timestamps null: false
    end
  end
end
