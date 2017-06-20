class Search
  include DataMapper::Resource

  property :id,         Serial
  property :color,      String
  property :term,       String
  property :response,   Text
  property :created_at, DateTime
  property :created_on, Date

  def build
    "https://www.googleapis.com/customsearch/v1?key=#{ENV["API_KEY"]}&cx=#{ENV["CX_ID"]}&q=#{color}%20#{term}&searchType=image&num=5&alt=json"
  end
end
