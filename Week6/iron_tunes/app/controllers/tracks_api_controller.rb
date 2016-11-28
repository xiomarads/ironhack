class TracksApiController < ApplicationController
  def index
    tracks_list = Track.all
    render json: tracks_list
end
end
