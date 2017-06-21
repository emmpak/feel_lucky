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

  describe '.reverse_order' do
    it 'returns the searches in reversed chronological order' do
      old_search = Search.create(color: color, term: term)
      new_search = Search.create(color: 'green', term: 'mountain')
      expect(Search.reverse_order).to eq [new_search, old_search]
    end
  end
end
