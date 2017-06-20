require './app/models/search'

describe Search do
  let(:color) { 'red' }
  let(:term) { 'ocean' }
  subject(:search) { described_class }

  describe '.build' do
    it('returns the url for the api') do
      expect(search.build(color: color, term: term)).to include "q=#{color}%20#{term}"
    end
  end
end
