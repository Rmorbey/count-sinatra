require "capybara/rspec"
require_relative "../../app"

Capybara.app = CounterApp

feature "serve web app" do
  scenario "should serve home page" do
    visit("/")
    expect(page).to have_button('Increment')
    expect(page).to have_content 0

  end
end

feature "serve web app" do
  scenario "should serve home page" do
    visit("/")
    expect(page).to have_button('Decrement')
    expect(page).to have_content -1
  end
end

feature "serve web app" do
  scenario "should serve home page" do
    visit("/")
    expect(page).to have_button('Reset')
    expect(page).to have_content 0
  end
end