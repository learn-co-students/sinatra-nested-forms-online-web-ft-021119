require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'pirates/new'
    end
    get '/new' do
      erb :'pirates/form'
    end
    post '/pirates' do
      @pirates_name = params[:pirate][:name]
      @pirates_weight = params[:pirate][:weight]
      @pirates_height = params[:pirate][:height]
      @ship1_name = params[:pirate][:ships][0][:name]
      @ship1_type = params[:pirate][:ships][0][:type]
      @ship1_booty = params[:pirate][:ships][0][:booty]
      @ship2_name = params[:pirate][:ships][1][:name]
      @ship2_type = params[:pirate][:ships][1][:type]
      @ship2_booty = params[:pirate][:ships][1][:booty]
      erb :'pirates/show'
    end
  end
end
