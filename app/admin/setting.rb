ActiveAdmin.register Setting do

  permit_params :longitude, :latitude
  config.filters = false
  actions :all, :except  => [:destroy, :new]
  config.batch_actions = false

  index as: :block do |setting|
    div for: setting do
      h3 "Latitude: #{setting.latitude}"
      h3 "Longitude: #{setting.longitude}"
    end
  end
  
end
