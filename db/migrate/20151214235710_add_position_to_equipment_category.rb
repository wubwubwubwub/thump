class AddPositionToEquipmentCategory < ActiveRecord::Migration
  def change
    add_column :equipment_categories, :position, :integer
  end
end
