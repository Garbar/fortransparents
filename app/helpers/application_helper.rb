module ApplicationHelper
  def thumb_image(post)
    if post.image.present?
      image_tag(post.image_url, class: "img-fluid")
    else
      # Assuming you have a default.jpg in your assets folder
      image_tag('fallback/default.jpg', class: "img-fluid")
    end
  end
end
