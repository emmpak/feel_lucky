class Format

  def self.top_image_html(title: title, link: link)
    "<a href='#{link}'><img src='#{link}' alt='#{title}' style='width: 100%'></a>"
  end

  def self.regular_image_html(title: title, link: link)
    "<div class='col-3'>" +
    "<img src='#{link}' alt='#{title}' style='width: 100%'>" +
    "</div>"
  end
end
