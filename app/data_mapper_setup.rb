require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/result'
require_relative 'models/search'
require_relative 'models/noun'

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/feel_lucky_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
