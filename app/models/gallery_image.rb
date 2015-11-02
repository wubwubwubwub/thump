class GalleryImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  # attr_accessible :image_cache
  
  scope :published, -> { where(published: true) }
  
end
