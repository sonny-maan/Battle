require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @name_p1 = params[:name_p1]
    @name_p2 = params[:name_p2]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
