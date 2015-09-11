#sign up users with valid credentials.
require "rails_helper"

RSpec.feature "Signing users up." do
  
  scenario "happy path, with valid credentials." do
    visit "/"
    
    click_link "Sign up"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    
    click_button "Sign up"
    expect(page).to have_content("You have signed up successfully.")
  end
end

