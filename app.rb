require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :welcome
    end
    
    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each {|ship| Ship.new(ship)}
      @ship1 = Ship.all.first
      @ship2 = Ship.all.last
      erb :'/pirates/show'
    end

  end
end
