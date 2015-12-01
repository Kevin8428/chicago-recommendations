require 'sinatra/base' #base application for sinatra
require './controllers/application' # should always be loaded FIRST
require './controllers/recommendations'
require './models/recommendation'
# run Sinatra::Application

map('/'){ run RecommendationsController}
