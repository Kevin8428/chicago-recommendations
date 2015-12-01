# defining teh starting point for my ApplicationController
# this used to be app.rb
# however app.rb became too muddy with too much going on
# now going to give controllers a chance to organize code
class ApplicationController < Sinatra::Base #inherits from sinaras base

  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'chicago_recommendations'
  )

# need to specify views folder

set :views, File.expand_path('../../views', __FILE__)

  not_found do
    erb :fourohfour
  end

end
