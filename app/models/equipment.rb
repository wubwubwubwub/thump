class Equipment < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  belongs_to :equipment_category, counter_cache: true

  validates :name, presence: true
  validates :equipment_category, presence: true
  
end
