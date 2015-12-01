# every model should have it's own controller
class RecommendationsController < ApplicationController #will have access to everything in ApplicationController

  get '/' do
    # 'works'
    erb :index
  end

  get '/api' do
    # same as select * from recommendations
    Recommendation.all.to_json
  end


end
