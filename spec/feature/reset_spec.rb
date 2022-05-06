require "capybara/rspec"
require_relative "../../app"

Capybara.app = CounterApp

feature "reset the count" do
  scenario "click the reset button and see the number reset" do
    visit("/")
    expect(page).to have_content 0
    click_button "Reset"
    expect(page).to have_button('Reset')
    expect(page).to have_content 0
  end
end
