ActiveAdmin.register Track do

  permit_params :name, :artist, :soundcloud_url, :published, :description

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
    redirect_to admin_tracks_path, alert: "The selections have been toggled"
  end

  
  index do
    selectable_column
    column :artist
    column :name
    column :soundcloud_url
    column :published
    actions
  end

  form do |f|
    f.inputs "Soundcloud Track" do
      f.input :artist
      f.input :name
      f.input :description
      f.input :soundcloud_url
      f.input :published
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :artist
      row :published
      row :description
      row('Soundcloud Track') {|t| raw(t.soundcloud_embed) }
    end
  end

end
