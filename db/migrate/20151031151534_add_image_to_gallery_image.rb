class AddImageToGalleryImage < ActiveRecord::Migration
  def up
    add_column :gallery_images, :image, :string
  end
  def down
    remove_column :gallery_images
  end
end
