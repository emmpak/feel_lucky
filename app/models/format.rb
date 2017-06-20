class Format

  def self.top_image_html(title: title, link: link)
    "<a href='#{link}'><img src='#{link}' alt='#{title}' style='width: 100%'></a>"
  end
end
