class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers do |t|
      t.string :name
      t.string :title
      t.string :bio

      t.timestamps null: false
    end
  end
end
