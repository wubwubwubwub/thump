class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.string :name
      t.string :image_id
      
      t.timestamps null: false
    end
  end
end
