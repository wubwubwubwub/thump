class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :latitude
      t.string :longitude
      
      t.timestamps null: false
    end
  end
end
