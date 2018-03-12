require 'capybara/rspec'

feature 'Viewing links' do
  scenario 'User can see a list of links ' do
    visit ('/')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.zoobudapest.com/en"
    expect(page).to have_content "http://www.shakespearesglobe.com/"
  end
end
