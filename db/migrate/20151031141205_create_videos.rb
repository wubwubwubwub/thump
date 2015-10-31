class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :source_url
      t.text :source_url_html
      t.boolean :published

      t.timestamps null: false
    end
  end
end
