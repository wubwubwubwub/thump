class AddPublishedToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :published, :boolean
  end
end
