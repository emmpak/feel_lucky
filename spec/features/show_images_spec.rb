feature 'images' do
  scenario 'five images are shown' do
    visit('/')
    click_link('red')
    expect(page).to have_css('img', count: 5)
  end
end
