ActiveAdmin.register Track do

  permit_params :name, :artist, :soundcloud_url, :published

  index do
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
      row('Soundcloud Track') {|t| raw(t.soundcloud_embed) }
    end
  end

end
