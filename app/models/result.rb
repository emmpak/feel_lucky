class Result
  attr_reader :images

  def initialize(api_response)
    @images = get_links(api_response)
  end

  def top_image
    title = self.images[0].keys[0]
    link = self.images[0].values[0]
    "<a href='#{link}'><img src='#{link}' alt='#{title}' style='100%'></a>"
  end

  def additional_images
    self.images[1..-1]
  end

  private

  def get_links(api_response)
    contents = JSON.parse(api_response)
    contents['items'].map{ |query| {query['title']=> query['link']}}
  end
end
