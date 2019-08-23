require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name_p1] = params[:name_p1]
    session[:name_p2] = params[:name_p2]
    redirect '/play'
  end

  get '/play' do
    @name_p1 = session[:name_p1]
    @name_p2 = session[:name_p2]
    erb :play
  end

  get '/attack' do
    @name_p1 = session[:name_p1]
    @name_p2 = session[:name_p2]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
