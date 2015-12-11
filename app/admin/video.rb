ActiveAdmin.register Video do

  permit_params :title, :description, :source_url, :published
  
  menu priority: 4
  
  config.filters = false

  action_item only: [:show] do
    link_to 'New Video', new_admin_video_path
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
    redirect_to admin_videos_path, alert: "The selections have been toggled"
  end
      
  
  
  index do
    selectable_column
    column :title
    # column :description
    column :source_url
    column :published
    column :source_url_html
    actions
  end
  
  form do |f|
    f.inputs "Video" do
      f.input :title
      f.input :description
      f.input :source_url
      f.input :published
      f.actions
    end
  end

  show do
    attributes_table do
      row :title
      row :description
      row :source_url
      row('Preview') {|v| v.source_url_html}
    end
  end
  
end
