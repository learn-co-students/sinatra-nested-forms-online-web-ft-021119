require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      'Welcome to the Nested Forms Lab!'
      erb :root
    end
    
    get '/new' do
      #'<form'
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |stats|
        Ship.new(stats)
      end
      @ships = Ship.all

    erb :'pirates/show'
    end
end
end
