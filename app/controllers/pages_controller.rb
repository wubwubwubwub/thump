class PagesController < ApplicationController
  def home
    render layout: "homepage"
  end

  def contact
  end

  def studio
  end

  def gear
    @categories = EquipmentCategory.includes(:equipment).all
  end
end
