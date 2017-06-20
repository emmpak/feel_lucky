class Search

  def self.build(color:, term:)
    "https://www.googleapis.com/customsearch/v1?#{ENV["API_KEY"]}&#{ENV["CX_ID"]}&q=#{color}%20#{term}&searcType=image&num=5&alt=json"
  end
end
