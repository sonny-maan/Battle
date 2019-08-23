require './lib/player'

describe Player do
  subject(:sonny) { Player.new('Sonny') }
  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end
end
