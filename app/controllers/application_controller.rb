class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_sidebar_posts

  private
  ##############################################################################

  def get_sidebar_posts
    @last_stories = Story.order(published_at: :desc).limit(3)
    @last_articles = Article.order(published_at: :desc).limit(3)
  end
end
