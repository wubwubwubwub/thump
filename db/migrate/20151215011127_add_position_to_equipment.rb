class AddPositionToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :position, :integer
  end
end
