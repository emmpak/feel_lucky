class Result
  attr_reader :images

  def initialize(api_response)
    @images = get_links(api_response)
  end

  private

  def get_links(api_response)
    contents = JSON.parse(api_response)
    contents['items'].map{ |query| {query['title']=> query['link']}}
  end
end
