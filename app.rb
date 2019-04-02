require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :"root"
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      params[:pirate][:ships].each do |info|
        @ship = Ship.new(info[:name], info[:type], info[:booty])
      end

      erb :"pirates/show"
    end
  end
end

# params:
# => {"pirate"=>
#   {"name"=>"Ian",
#    "weight"=>"165",
#    "height"=>"95",
#    "ships"=>
#     [{"name"=>"Titanic", "type"=>"Steam Liner", "booty"=>"Silver"},
#      {"name"=>"Carpathia", "type"=>"Rescue Ship", "booty"=>"Inner Tubes"}]}}
