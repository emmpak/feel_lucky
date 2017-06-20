require './app/models/term'

describe Term do
  subject(:term) { described_class }

  describe '.randomize' do
    it('returns a random word from the CHOICES constant') do
      expect(term::CHOICES).to receive :sample
      term.randomize
    end
  end
end
