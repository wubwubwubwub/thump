class Video < ActiveRecord::Base

  scope :published, -> { where(published: true) }
  
  auto_html_for :source_url do
    youtube(:width => 720, :height => 480)
    vimeo(:width => 720, :height => 480)
  end

end
