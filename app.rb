require 'bundler'
Bundler.require
ActiveRecord::Base.establish_connection(
:adapter => 'postgresql',
:database => 'chicago_recommendations'
)

get '/' do
  'works'
end

get '/api' do
  # same as select * from recommendations
  Recommendation.all.to_json
end
