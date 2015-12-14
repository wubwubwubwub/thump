class VideosController < ApplicationController
  def index
    @videos = Video.published.all.order('created_at DESC')
  end
end
