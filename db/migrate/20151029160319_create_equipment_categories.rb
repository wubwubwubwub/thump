class CreateEquipmentCategories < ActiveRecord::Migration
  def change
    create_table :equipment_categories do |t|
      t.string :name
      t.integer :equipment_count

      t.timestamps null: false
    end
  end
end
