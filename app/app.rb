require 'sinatra/base'
require 'net/http'

require_relative 'models/result'

class App < Sinatra::Base

  get '/' do
    @colors = ['red', 'pink', 'orange', 'yellow', 'green', 'blue', 'purple']
    erb :'colors/index'
  end

  get '/images/:color' do
    # https://www.googleapis.com/customsearch/v1?key=AIzaSyBx2GOwVTfy8KUs__kUNfuEfx3vNEuILYA&cx=004788837464779016655:bl6ckw2kc5o&q=red&searchType=image&num=5&alt=json
    # request = 'https://www.googleapis.com/customsearch/v1?key=' +
    @result = Result.new(File.read('./spec/sample_api_response.rb'))
    erb :'images/index'
  end
end
