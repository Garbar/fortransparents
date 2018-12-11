module ApplicationHelper
  def thumb_image(post)
    if post.image.present?
      image_tag(post.image_url, class: "img-fluid")
    else
      # Assuming you have a default.jpg in your assets folder
      image_tag('fallback/default.jpg', class: "img-fluid")
    end
  end

    # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Relativies"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
