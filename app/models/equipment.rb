class Equipment < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  belongs_to :equipment_category, counter_cache: true
end
