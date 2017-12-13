class StoriesController < ApplicationController
  def index
    @stories = Story.order(published_at: :desc).page params[:page]
  end

  def show
    @story = Story.friendly.find(params[:id])
  end
end
