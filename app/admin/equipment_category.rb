ActiveAdmin.register EquipmentCategory do

  permit_params :name, :equipment_count, :position

  menu parent: "Admin"
  
  config.sort_order = "position_asc"
  config.paginate = false

  sortable
  
  index do
    selectable_column
    sortable_handle_column
    column :position
    column :name
    actions
  end
end
