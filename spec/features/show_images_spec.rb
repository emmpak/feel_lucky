feature 'images' do

  before do
    Search.create(color: 'red', term: 'mountain')
    visit('/search')
  end

  scenario 'five images are shown' do
    expect(page).to have_css('img', count: 5)
  end

  scenario 'one image can be clicked' do
    within('#top-image') { expect(page).to have_link('a', count: 1) }
  end
end
