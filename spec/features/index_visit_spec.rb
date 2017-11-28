require 'rails_helper'

RSpec.feature "Visit homepage", :type => :feature do
  scenario "User visit homepage" do
    visit "/"

    expect(page).to have_text("Welcome Colin's Blog")
  end
end
