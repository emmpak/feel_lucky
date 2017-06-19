require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    @colors = ['red', 'pink', 'orange', 'yellow', 'green', 'blue', 'purple']
    erb :'index'
  end
end
