class Track < ActiveRecord::Base

  scope :published, -> { where(published: true) }
  
  def soundcloud_embed
    client = Soundcloud.new(:client_id => '97a15aa91f964f4e6e21bbb693a549ba')
    track_url = soundcloud_url
    embed_info = client.get('/oembed', :url => track_url)
    return embed_info['html']    
  end
  
end
