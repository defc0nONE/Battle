require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#impart' do
    it 'imparts super powers to the player' do
      expect(player2).to receive(:receive_superpowers)
      game.impart(player2)
    end
  end
end
