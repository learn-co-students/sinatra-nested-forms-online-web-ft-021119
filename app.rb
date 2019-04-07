require './environment'

module FormsLab
  class App < Sinatra::Base

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