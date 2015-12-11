ActiveAdmin.register EquipmentCategory do

  permit_params :name, :equipment_count

  menu parent: "Admin"
  
  index do
    selectable_column
    column :name
    actions
  end
end
