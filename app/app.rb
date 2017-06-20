require 'dotenv/load'
require 'sinatra/base'
require 'net/http'

require_relative 'models/result'
require_relative 'models/search'
require_relative 'models/term'

class App < Sinatra::Base

  get '/' do
    @colors = ['red', 'pink', 'orange', 'yellow', 'green', 'blue', 'purple']
    erb :'colors/index'
  end

  get '/images/:color' do
    # search = Search.build(color: params[:color], term: Term.randomize)
    # uri = URI(search)
    # response = Net::HTTP.get(uri)
    # @result = Result.new(response)
    @result = Result.new(File.read('./spec/sample_api_response.rb'))
    erb :'images/index'
  end
end
