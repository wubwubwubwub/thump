class AddPublishedToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :published, :boolean
  end
end
