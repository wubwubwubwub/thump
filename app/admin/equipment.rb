ActiveAdmin.register Equipment do

  permit_params :name, :equipment_category_id, :description, :image, :published, :field

  menu priority: 1
  
  action_item only: [:show, :edit] do
    link_to 'New Equipment', new_admin_equipment_path
  end

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
    redirect_to admin_equipment_index_path, alert: "The selections have been toggled"
  end

  
  scope :all
  scope :microphones
  scope :outboard_pres
  scope :effects_pedals
  scope :keys
  scope :EQ
  scope :amps
  scope :drums
  scope :field
  
  index do
    selectable_column
    column :equipment_category
    column :name
    column :published
    column "Image Uploaded?", :sortable => :image do |i|
      content_tag(:span, (i.image? ? "Yes" : "No"), class: "status_tag #{i.image? ? "yes" : "no"}")
    end
    # column :description
    actions
  end

  show :html => { :multipart => true } do
    attributes_table do
      row :name
      row :published
      row :field
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
      f.input :field
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
