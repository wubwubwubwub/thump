class Equipment < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  belongs_to :equipment_category, counter_cache: true

  validates :name, presence: true
  validates :name, uniqueness: :true
  validates :equipment_category, presence: true

  scope :microphones, -> {where(equipment_category_id: 1)}
  scope :consoles, -> {where(equipment_category_id: 2)}
  scope :outboard_pres, -> {where(equipment_category_id: 3)}
  scope :effects_pedals, -> {where(equipment_category_id: 4)}
  scope :keys, -> {where(equipment_category_id: 14)}
  scope :EQ, -> {where(equipment_category_id: 7)}
  scope :amps, -> {where(equipment_category_id: 12)}
  scope :drums, -> {where(equipment_category_id: 13)}
  scope :field, -> {where(field: true)}
  scope :studio, -> {where(field: false)}
end
