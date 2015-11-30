class AddDefaultToField < ActiveRecord::Migration
  def up
    change_column_default :equipment, :field, false
  end
  def down
    change_column_default :equipment, :field, nil
  end
end
