require './app/models/search'

describe Search do
  let(:color) { 'red' }
  let(:term) { 'ocean' }
  let(:search) { Search.create(color: color, term: term) }

  describe '#build' do
   it 'returns' do
     expect(search.build).to include "q=#{color}%20#{term}"
   end
  end
end
