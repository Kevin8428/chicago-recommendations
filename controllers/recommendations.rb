# every model should have it's own controller
class RecommendationsController < ApplicationController #will have access to everything in ApplicationController

  get '/' do
    # 'works'
    @recommendation = Recommendation.all
    erb :read_recommendation
  end

  get '/create' do
    erb :create_recommendation
  end


  post '/create/'do
    p params
    @rec = Recommendation.new
    @rec.contributor = params[:contributor]
    @rec.place = params[:name]
    @rec.typeOfPlace = params[:type_of_place]
    @rec.notes = params[:notes]
    @rec.save
    erb :index
  end


  get '/api' do
    # same as select * from recommendations
    Recommendation.all.to_json
  end

  get '/api/:id' do
    p params
    return Recommendation.find(params[:id]).to_json
  end
end
