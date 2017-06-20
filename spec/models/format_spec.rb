require('./app/models/format')

describe Format do
  let(:title) { "Street View Treks: Petra" }
  let(:link) { "https://www.google.com/maps/about/behind-the-scenes/streetview/treks/petra/images/og-image.jpg" }
  subject(:format) { described_class }


  describe '.top_image_html' do
    it('returns an html string with the image formated as a link') do
      expect(format.top_image_html(title: title, link: link)).to eq("<a href='https://www.google.com/maps/about/behind-the-scenes/streetview/treks/petra/images/og-image.jpg'><img src='https://www.google.com/maps/about/behind-the-scenes/streetview/treks/petra/images/og-image.jpg' alt='Street View Treks: Petra' style='width: 100%'></a>")
    end
  end

  describe '.regular_image_html' do
    it('returns the images formatted as an html string') do
      expect(format.regular_image_html(title: title, link: link)).to eq("<div class='col-3'><img src='https://www.google.com/maps/about/behind-the-scenes/streetview/treks/petra/images/og-image.jpg' alt='Street View Treks: Petra' style='width: 100%'></div>")
    end
  end
end
