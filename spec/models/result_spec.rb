require './app/models/result'

describe Result do
  let(:api) { JSON.parse(File.read('./spec/sample_api_response.rb'))}
  subject(:result) { described_class.new(api) }

  describe('#images') do
    it('stores five images returned from the api call') do
      expect(result.images.count).to eq 5
    end
  end
end
