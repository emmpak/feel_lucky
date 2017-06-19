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

  scenario 'colors are clickable' do
    visit('/')
    expect(page).to have_selector('a', count: 7)
  end

  context 'when clicked, the color gets passed in the query string' do
    scenario 'red link' do
      visit('/')
      click_link('red')
      expect(current_path).to eq '/images/red'
    end

    scenario 'pink link' do
      visit('/')
      click_link('pink')
      expect(current_path).to eq '/images/pink'
    end

    scenario 'orange link' do
      visit('/')
      click_link('orange')
      expect(current_path).to eq '/images/orange'
    end

    scenario 'yellow link' do
      visit('/')
      click_link('yellow')
      expect(current_path).to eq '/images/yellow'
    end

    scenario 'green link' do
      visit('/')
      click_link('green')
      expect(current_path).to eq '/images/green'
    end

    scenario 'blue link' do
      visit('/')
      click_link('blue')
      expect(current_path).to eq '/images/blue'
    end

    scenario 'purple link' do
      visit('/')
      click_link('purple')
      expect(current_path).to eq '/images/purple'
    end
  end
end
