require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $name_p1 = Player.new(params[:name_p1])
    $name_p2 = Player.new(params[:name_p2])
    redirect '/play'
  end

  get '/play' do
    @name_p1 = $name_p1.name
    @name_p2 = $name_p2.name
    erb :play
  end

  get '/attack' do
    @name_p1 = $name_p1.name
    @name_p2 = $name_p2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
