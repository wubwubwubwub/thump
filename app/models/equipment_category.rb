class EquipmentCategory < ActiveRecord::Base
  has_many :equipment

  scope :field, -> {joins(:equipment).merge(Equipment.field)}
  scope :studio, -> {joins(:equipment).merge(Equipment.studio)}
end
