class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.belongs_to :type, index: true, foreign_key: true
      t.text :description
      t.float :weight
      t.string :url
      t.string :cost
      t.boolean :is_owned
      t.date :purchased_on
      t.text :notes

      t.timestamps null: false
    end
  end
end
