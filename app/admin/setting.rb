ActiveAdmin.register Setting do

  permit_params :longitude, :latitude

  menu parent: "Admin"
  
  config.filters = false
  config.batch_actions = false
  config.clear_action_items!

  controller do
    actions :all, :except => [:destroy]
  end

  
  # index as: :block do |setting|
  #   div for: setting do
  #    h3 "Latitude: #{setting.latitude}"
  #    h3 "Longitude: #{setting.longitude}"
  #   end
  # end
  
end
