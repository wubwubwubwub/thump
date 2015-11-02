class AddPublishedToGalleryImages < ActiveRecord::Migration
  def change
    add_column :gallery_images, :published, :boolean
  end
end
