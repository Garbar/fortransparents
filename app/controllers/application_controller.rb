class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_sidebar_posts
  before_action :set_locale

  # def default_url_options
  #   { locale: I18n.locale }
  # end
  def default_url_options(options={})
    { locale: I18n.locale }.merge(options)
  end

  private
  ##############################################################################

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    Rails.application.routes.default_url_options[:locale]= I18n.locale
  end

  def get_sidebar_posts
    @last_stories = Story.order(published_at: :desc).limit(3)
    @last_articles = Article.order(published_at: :desc).limit(3)
  end
end
