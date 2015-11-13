ActiveAdmin.register Equipment do

  permit_params :name, :equipment_category_id, :description, :image, :published

  index do
    column :name
    column :published
    column "Image Uploaded?", :sortable => :image do |i|
      content_tag(:span, (i.image? ? "Yes" : "No"), class: "status_tag #{i.image? ? "yes" : "no"}")
    end
    column :description
    actions
  end

  show :html => { :multipart => true } do
    attributes_table do
      row :name
      row :published
      row :created_at
      row :equipment_category
      row :description
      row "Thumbnail", :image do |i|
        image_tag i.image_url(:thumb)
      end
      row "View Fullsize Image" do |i|
        link_to "Link to fullsize image", i.image_url, target: "_blank"
      end
    end
  end

  
  form :html => { :multipart => true } do |f|
    f.inputs "Equipment" do
      f.input :equipment_category
      f.input :name
      f.input :description
      f.input :image, as: :file, :hint => f.object.image.present? \
                                          ? image_tag(f.object.image.url(:thumb))
                                          : content_tag(:span, "No Image Uploaded Yet")

      # hint: image_tag(f.object.image.url(:thumb))
      f.input :image_cache, as: :hidden
      f.input :published
      f.actions
    end
  end

  

  
end
