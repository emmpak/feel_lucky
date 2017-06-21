require './app/models/noun'

describe Noun do
  subject(:noun) { described_class }

  describe '.randomize' do
    it('returns a random word from the CHOICES constant') do
      expect(noun::CHOICES).to receive :sample
      noun.randomize
    end
  end
end
