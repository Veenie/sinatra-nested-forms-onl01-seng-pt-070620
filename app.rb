require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    
    get '/' do
    
    erb :'pirates/new'
    end
    
    get '/new' do
      
      erb :'pirates/new'
    end  
    
    post '/pirates' do
  
      @pirate = Pirate.new(params[:pirate])
      @ships = Ship.all
      
      params[:pirate][:ships].each do |details|
      Ship.new(details)
      end
      
      erb :'pirates/show' 
    end  
      

  end
end
