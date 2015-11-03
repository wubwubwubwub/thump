ActiveAdmin.register Video do

  permit_params :title, :description, :source_url, :published

  config.filters = false
  
  index do
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
