class VideosController < ApplicationController
  def index
    @videos = Video.order(published_at: :desc).page params[:page]
  end

  def show
    @video = Video.friendly.find(params[:id])
  end
end
