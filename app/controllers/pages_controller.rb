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
    @categories = EquipmentCategory.includes(:equipment).studio
  end

  def field
    @categories = EquipmentCategory.includes(:equipment).field
  end
end
