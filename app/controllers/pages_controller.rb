class PagesController < ApplicationController
  def home
    render layout: "homepage"
  end

  def contact
  end

  def studio
    @photos = GalleryImage.published.all
    @categories = EquipmentCategory.includes(:equipment).all
  end

  def gear
    @equipment = Equipment.includes(:equipment_category).all
  end
end
