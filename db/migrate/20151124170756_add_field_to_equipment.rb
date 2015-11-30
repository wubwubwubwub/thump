class AddFieldToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :field, :boolean
  end
end
