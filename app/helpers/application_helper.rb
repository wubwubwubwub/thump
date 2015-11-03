module ApplicationHelper
  # def contact_email
  #   Setting.find(1).contact_email if present?
  # end

  # def facebook
  #   Setting.find(1).facebook if present?
  # end

  # def twitter
  #   Setting.find(1).twitter if present?
  # end

  # def instagram
  #   Setting.find(1).instagram if present?
  # end

  # def contacts
  #   Setting.find(1).contacts if present?
  # end
  
  def is_active?(link_path)
    current_page?(link_path) ? "active" : ""
  end

end
