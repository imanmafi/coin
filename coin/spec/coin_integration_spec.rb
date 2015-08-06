require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin path', {:type => :feature}) do
  it('processes the user entry and returns efficient amount of change') do
    visit('/')
    fill_in('change', :with => 87)
    click_button('Send')
    expect(page).to have_content("[3, 1, 0, 2]")
  end
end
