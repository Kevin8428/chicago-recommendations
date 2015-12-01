require 'bundler'
Bundler.require
ActiveRecord::Base.establish_connection(
:adapter => 'postgresql',
:database => 'ChicagoRecommendations'
)

get '/' do
  'works'
end
