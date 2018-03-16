require 'capybara/rspec'

feature 'Viewing links' do
  scenario 'User can see a list of links ' do
    visit ('/')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.zoobudapest.com/en"
    expect(page).to have_content "http://www.shakespearesglobe.com/"
  end
end

feature 'adding links' do
  scenario 'User addes a valid link' do
    visit ('/')
    fill_in :url, with: 'https://deveiate.org/code/pg/'
    click_on('Submit')
    expect(page).to have_content('https://deveiate.org/code/pg/')
  end

  scenario 'User tries to add an invalid link' do
    visit ('/')
    fill_in :url, with: 'chicken is life'
    click_on('Submit')
    expect(page).to have_no_content('chicken is life')
    expect(page).to have_content('Please add a valid link')
  end
end
