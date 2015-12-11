class PagesController < ApplicationController
  def home
    render layout: "homepage"
  end

  def contact
  end

  def studio
    @photos = GalleryImage.published.all
  end

  def gear
    @categories = EquipmentCategory.includes(:equipment).studio.order('equipment_categories.name, equipment.name ASC')
  end

  def field
    @categories = EquipmentCategory.includes(:equipment).field.order('equipment_categories.name, equipment.name ASC')
  end
end
