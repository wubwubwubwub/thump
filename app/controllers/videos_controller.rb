class VideosController < ApplicationController
  def index
    @videos = Video.published.all
  end
end
