require './app/models/result'

describe Result do
  let(:api) { JSON.parse(File.read('./spec/sample_api_response.rb'))}
  subject(:result) { described_class.new(api) }

  describe('#images') do
    it('stores five images returned from the api call') do
      expect(result.images.count).to eq 5
      expect(result.images).to eq(["https://www.google.com/maps/about/behind-the-scenes/streetview/treks/petra/images/og-image.jpg",
                                   "https://www.google.com/chrome/assets/common/images/screenshots/privacy/03-malware.png",
                                   "http://www.google.com/logos/doodles/2016/childrens-day-2016-australia-5690217928327168-hp.jpg",
                                   "http://www.google.com/logos/doodles/2016/theodosia-okohs-94th-birthday-6192481731346432-hp.jpg",
                                   "https://www.google.com/admob/images/animations/icon-wallet.png"])
    end
  end
end
