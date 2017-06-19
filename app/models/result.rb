class Result
  attr_reader :images

  def initialize(api_response)
    @images = get_links(api_response)
  end

  def top_image
    self.images[0]
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
