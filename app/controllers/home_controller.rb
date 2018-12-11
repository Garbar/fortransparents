class HomeController < ApplicationController
  def index
    @last_articles = Article.order(published_at: :desc).limit(3)
  end
end
