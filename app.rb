require 'sinatra'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect(:play)
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/impart' do
    @game = $game
    @game.impart(@game.player2)
    erb(:impart)
  end

  run! if app_file == $0
end
