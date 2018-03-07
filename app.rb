require 'sinatra'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect(:play)
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end

  get '/impart' do
    @player1 = $player1
    @player2 = $player2
    @player1.impart(@player2)
    erb(:impart)
  end

  run! if app_file == $0
end
