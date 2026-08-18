require "rails_helper"

RSpec.describe "RootScreen", type: :system do
  before do
    visit root_path
  end

  it "displays the root screen with the correct data-testid" do
    expect(page).to have_css('[data-testid="root-screen"]')
  end

  it "renders the neutral starter experience" do
    expect(page).to have_content("Production-Ready Rails + React Template")
    expect(page).to have_content("Build Your Next Great Product")
    expect(page).not_to have_content("AllSpark Social")
    expect(page).not_to have_content("Social media management")
    expect(page).not_to have_content("Content Calendar")
  end
end
