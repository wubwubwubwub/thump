class TracksController < ApplicationController
  def index
    @tracks = Track.published.all
  end
end
