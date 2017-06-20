class Search

  def self.build(color:, term:)
    "https://www.googleapis.com/customsearch/v1?key=#{ENV["API_KEY"]}&cx=#{ENV["CX_ID"]}&q=#{color}%20#{term}&searchType=image&num=5&alt=json"
  end
end
