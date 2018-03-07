require 'player'

describe Player do
  subject(:fred) { Player.new('Fred') }
  subject(:frank) { Player.new('Frank') }

  describe '#name' do
    it 'returns their name' do
      expect(fred.name).to eq 'Fred'
    end
  end

  describe '#super_powers' do
    it 'returns the super power points' do
      expect(fred.super_powers).to eq described_class::DEFAULT_SUPER_POWERS
    end
  end

  describe '#impart' do
    it 'imparts super powers to the player' do
      expect(fred).to receive(:receive_superpowers)
      frank.impart(fred)
    end
  end

  describe '#receive_superpowers' do
    it 'increases super powers by 10' do
      expect { fred.receive_superpowers }.to change { fred.super_powers }.by(10)
    end
  end
end
