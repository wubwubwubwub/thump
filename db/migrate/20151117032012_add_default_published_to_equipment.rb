class AddDefaultPublishedToEquipment < ActiveRecord::Migration
  def up
    change_column_default :equipment, :published, true
  end
  def down
    change_column_default :equipment, :published, nil
  end
end
