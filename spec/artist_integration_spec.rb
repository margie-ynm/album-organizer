require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the home path', {:type => :feature}) do
  it('verifies that the home page is functioning') do
    visit('/')
    expect(page).to have_content('CD Organizer')
  end
end

describe('Add new artist path', {:type => :feature}) do
  it('Navigates to the add new artist page') do
    visit('/artist/new')
    expect(page).to have_content('New Artist Page')
  end
end

describe('View artists path', {:type => :feature}) do
  it('Navigates to the artists list page') do
    visit('/')
    click_link('Add a new Artist')
    fill_in('artist', :with => 'The Strokes')
    click_button('Add Artist')
    click_link('Return Home')
    click_link('View Artists')
    expect(page).to have_content('The Strokes')
  end
end
