require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  subject(:finished_game) { described_class.new(dead_player, player2) }
  let(:player1) { double :player, super_powers: 0 }
  let(:player2) { double :player, super_powers: 0 }
  let(:dead_player) { double :player, super_powers: 50 }

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end
  end

  describe '#game_over?' do
    it 'returns false if no one is at 50SP' do
      expect(game.game_over?).to be false
    end

    it 'returns true if at least one player is at 50SP' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a player on more than 50SP' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end
