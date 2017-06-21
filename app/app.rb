ENV['RACK_ENV'] ||= 'development'

require 'dotenv/load'
require 'sinatra/base'
require 'net/http'

require_relative 'data_mapper_setup'

class App < Sinatra::Base

  get '/' do
    @colors = ['red', 'pink', 'orange', 'yellow', 'green', 'blue', 'purple']
    erb :'colors/index'
  end

  post '/search/new/:color' do
    # search = Search.new(color: params[:color], term: Term.randomize)
    # uri = URI(search.build)
    # http_response = Net::HTTP.get(uri)
    # search.response = http_response
    # search.save
    redirect '/search'
  end

  get '/search' do
    # @result = Result.new(Search.last.response)
    @result = Result.new(File.read('./spec/sample_api_response.rb'))
    @previous = Search.all
    erb :'images/index'
  end
end
