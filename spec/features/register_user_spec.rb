require 'rails_helper'
feature "guest user creates an account" do
  scenario "successfully creates a new user account" do
    visit ''
    fill_in "user_username", with: "shane"
    click_button "Sign In"
    expect(page).to have_content "Welcome"
  end

  scenario "posts a message" do
    visit '/wall'
    fill_in "user_message", with: "Hello World"
    click_button "Post a message"
    expect(page).to have_content "Welcome"
    # We'll be redirecting to the user show page is user succesfully created
    expect(page).to have_current_path('/wall')    
  end


  scenario "posts a comment" do
    visit '/wall'
    click_link "logout_link"
    expect(page).to have_current_path('/')
  end
end