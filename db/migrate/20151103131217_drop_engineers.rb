class DropEngineers < ActiveRecord::Migration
  def change
    drop_table :engineers
  end
end
