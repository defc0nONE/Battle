require 'sinatra'
require './lib/game'
require './lib/player'
require './lib/impart'

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

  post '/impart' do
    Impart.run($game.opponent_of($game.current_turn))
    if $game.game_over?
      redirect '/game-over'
    else
      redirect '/impart'
    end
  end

  get '/impart' do
    @game = $game
    erb(:impart)
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect(:play)
  end

  get '/game-over' do
    @game = $game
    erb(:game_over)
  end

  run! if app_file == $0
end
