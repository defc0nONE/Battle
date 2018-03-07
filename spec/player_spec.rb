require 'player'

describe Player do
  subject(:fred) { Player.new('FRED') }

  describe '#name' do
    it 'returns their name' do
      expect(fred.name).to eq 'FRED'
    end
  end
end
