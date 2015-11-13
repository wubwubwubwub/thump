class AddImageToEquipment < ActiveRecord::Migration
  def up
    add_column :equipment, :image, :string
  end
  def down
    remove_column :equipment, :image, :string
  end
end
