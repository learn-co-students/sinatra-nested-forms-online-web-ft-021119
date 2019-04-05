require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base


  	get '/' do 
   erb :root

  	end

  	get '/new' do 
      erb :'pirates/new'
  	end

  	post '/pirates' do
   #  binding.pry

  		@pirate = Pirate.new(params[:pirate])

      #binding.pry
      
      params[:pirate][:ships].each do |details|
        Ship.new(details)
        #binding.pry
      end

  		@ships  = Ship.all
     #binding.pry
  		erb :'pirates/show'

  	end




    # code other routes/actions here

  end
end
