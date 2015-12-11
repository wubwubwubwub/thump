ActiveAdmin.register GalleryImage do

  permit_params :name, :image, :published

  config.filters = false
  
  batch_action :toggle_published_on do |ids|
    batch_action_collection.find(ids).each do |r|
      if !r.published
        r.published = true
        r.save!
      else
        r.published = false
        r.save!
      end
    end
    redirect_to admin_gallery_images_path, alert: "The selections have been toggled"
  end

  
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
