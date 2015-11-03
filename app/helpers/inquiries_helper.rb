module InquiriesHelper
  def latitude
    Setting.find(1).latitude if present?
  end

  def longitude
    Setting.find(1).longitude if present?
  end

end
