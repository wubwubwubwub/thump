class EquipmentCategory < ActiveRecord::Base
  has_many :equipment

  scope :field, -> {joins(:equipment).merge(Equipment.field.order(position: :asc))}
  scope :studio, -> {joins(:equipment).merge(Equipment.studio.order(position: :asc))}

  acts_as_list
  
end
