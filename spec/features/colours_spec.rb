feature 'view colours' do
  scenario 'seven available colors are displayed' do
    visit('/')
    expect(page).to have_css('#red')
    expect(page).to have_css('#pink')
    expect(page).to have_css('#orange')
    expect(page).to have_css('#yellow')
    expect(page).to have_css('#green')
    expect(page).to have_css('#blue')
    expect(page).to have_css('#purple')
  end

  scenario 'each color represents a form' do
    visit('/')
    expect(page).to have_selector('form', count: 7)
  end
end
