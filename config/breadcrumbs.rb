crumb :root do
  link "<i class='fa fa-home' aria-hidden='true'></i>".html_safe, root_path
end

crumb :stories do
  link "All Live Stories", stories_path
end

crumb :story do |story|
  link story.title, story_path(story)
  parent :stories
end

crumb :articles do
  link "All Articles", articles_path
end

crumb :article do |article|
  link article.title, article_path(article)
  parent :articles
end

crumb :videos do
  link "All Videos", videos_path
end

crumb :video do |video|
  link video.title, video_path(video)
  parent :videos
end

crumb :contact do
  link "Our contacts", new_contact_path
end