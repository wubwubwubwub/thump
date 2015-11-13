ActiveAdmin.register GalleryImage do

  permit_params :name, :image, :published

  index do
    selectable_column
    column :name
    column :published
    column :created_at
    column :image do |i|
      image_tag i.image_url(:thumb)
    end
    actions
  end
  
  show :html => { :multipart => true } do
    attributes_table do
      row :name
      row "Thumbnail", :image do |i|
        image_tag i.image_url(:thumb)
      end
      row "View Fullsize Image" do |i|
        link_to "Link to fullsize image", i.image_url, target: "_blank"
      end
    end
  end

  form :html => { :multipart => true } do |f|
    f.inputs "Gallery Images" do
      f.input :name
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
