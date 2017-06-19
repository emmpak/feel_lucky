require './app/models/result'

describe Result do
  let(:api) { File.read('./spec/sample_api_response.rb')}
  subject(:result) { described_class.new(api) }

  describe('#top_image') do
    it('formats the top search result as a link') do
      expect(result.top_image).to eq("<a href='https://www.google.com/maps/about/behind-the-scenes/streetview/treks/petra/images/og-image.jpg'><img src='https://www.google.com/maps/about/behind-the-scenes/streetview/treks/petra/images/og-image.jpg' alt='Street View Treks: Petra' style='100%'></a>")
    end
  end

  describe('#additional_images') do
    it('returns an array without the top search results') do
      expect(result.additional_images).to eq([
                                   {"Google Chrome Privacy Whitepaper"=>"https://www.google.com/chrome/assets/common/images/screenshots/privacy/03-malware.png"},
                                   {"Lunar New Year 2016"=>"http://www.google.com/logos/doodles/2016/childrens-day-2016-australia-5690217928327168-hp.jpg"},
                                   {"Theodosia Okoh's 94th birthday"=>"http://www.google.com/logos/doodles/2016/theodosia-okohs-94th-birthday-6192481731346432-hp.jpg"},
                                   {"Google AdMob - Mobile App Monetization & In App Advertising ..."=>"https://www.google.com/admob/images/animations/icon-wallet.png"}
                                  ])
    end
  end

  describe('#images') do
    it('stores five images returned from the api call') do
      expect(result.images.count).to eq 5
      expect(result.images).to eq([{"Street View Treks: Petra"=>"https://www.google.com/maps/about/behind-the-scenes/streetview/treks/petra/images/og-image.jpg"},
                                   {"Google Chrome Privacy Whitepaper"=>"https://www.google.com/chrome/assets/common/images/screenshots/privacy/03-malware.png"},
                                   {"Lunar New Year 2016"=>"http://www.google.com/logos/doodles/2016/childrens-day-2016-australia-5690217928327168-hp.jpg"},
                                   {"Theodosia Okoh's 94th birthday"=>"http://www.google.com/logos/doodles/2016/theodosia-okohs-94th-birthday-6192481731346432-hp.jpg"},
                                   {"Google AdMob - Mobile App Monetization & In App Advertising ..."=>"https://www.google.com/admob/images/animations/icon-wallet.png"}])
    end
  end
end
