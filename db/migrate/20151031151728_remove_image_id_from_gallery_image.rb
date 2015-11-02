class RemoveImageIdFromGalleryImage < ActiveRecord::Migration
  def change
    remove_column :gallery_images, :image_id
  end
end
