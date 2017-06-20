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
  end

  def additional_images
    images[1..-1].map { |image| format_class.regular_image_html(title: image.keys[0], link: image.values[0]) }.join(' ')
  end

  private

  def get_links(api_response)
    contents = JSON.parse(api_response)
    contents['items'].map{ |query| {query['title']=> query['link']}}
  end
end
