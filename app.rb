require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params['Player 1 Name']
    @player2 = params['Player 2 Name']
    erb(:play)
  end

  run! if app_file == $0
end
