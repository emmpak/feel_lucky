require 'sinatra/base'
require 'net/http'

class App < Sinatra::Base

  get '/' do
    @colors = ['red', 'pink', 'orange', 'yellow', 'green', 'blue', 'purple']
    erb :'colors/index'
  end

  get '/images/:color' do
    @result
  end
end
