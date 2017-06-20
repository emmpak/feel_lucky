require_relative('format')

class Result
  attr_reader :images, :format_class

  def initialize(api_response, format_class = Format)
    @images = get_links(api_response)
    @format_class = format_class
  end

  def top_image
    title = images[0].keys[0]
    link = images[0].values[0]
    format_class.top_image_html(title: title, link: link)
    # "<a href='#{link}'><img src='#{link}' alt='#{title}' style='width: 100%'></a>"
  end

  def additional_images
    html = images[1..-1].map do |image|
      "<div class='col-3'>" +
      "<img src='#{image.values[0]}' alt='#{image.keys[0]}' style='width: 100%'>" +
      "</div>"
    end
    html.join(' ')
  end

  private

  def get_links(api_response)
    contents = JSON.parse(api_response)
    contents['items'].map{ |query| {query['title']=> query['link']}}
  end
end
