crumb :root do
  link "<i class='fa fa-home' aria-hidden='true'></i>".html_safe, root_path
end

crumb :stories do
  link t('menu.story'), stories_path
end

crumb :story do |story|
  link story.title, story_path(story)
  parent :stories
end

crumb :articles do
  link t('menu.article'), articles_path
end

crumb :article do |article|
  link article.title, article_path(article)
  parent :articles
end

crumb :videos do
  link t('menu.video'), videos_path
end

crumb :video do |video|
  link video.title, video_path(video)
  parent :videos
end

crumb :contact do
  link t('menu.contact'), new_contact_path
end

crumb :results do
  link t('menu.result_search'), results_path
end